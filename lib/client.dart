import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:io';
import 'dart:convert';

import './servicestack.dart';
export './servicestack.dart';

typedef RequestFilter = void Function(HttpClientRequest req);
typedef ResponseFilter = void Function(HttpClientResponse res);
typedef ResponseExceptionFilter = void Function(
    HttpClientResponse? res, Exception e);

class ClientFactory {
  static IServiceClient create([String baseUrl = "/", ClientOptions? options]) {
    var client = JsonServiceClient(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient!(client);
    }
    return client;
  }

  static IServiceClient api([String baseUrl = "/", ClientOptions? options]) {
    var client = JsonServiceClient.api(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient!(client);
    }
    return client;
  }

  static IServiceClient legacy([String baseUrl = "/", ClientOptions? options]) {
    var client = JsonServiceClient.legacy(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient!(client);
    }
    return client;
  }

  static IServiceClient createWith(ClientOptions options) {
    var client = create(options.baseUrl);
    if (client is JsonServiceClient) {
      if (options.ignoreCertificatesFor.isNotEmpty) {
        var ignoreCerts = toHostsMap(options.ignoreCertificatesFor);
        client.client.badCertificateCallback = (cert, host, port) {
          if (ignoreCerts.containsKey(host)) {
            var ignorePort = ignoreCerts[host];
            return ignorePort == null || ignorePort == port;
          }
          return false;
        };
      }
    }
    return client;
  }

  static IServiceClient apiWith(ClientOptions options) {
    var client = api(options.baseUrl);
    if (client is JsonServiceClient) {
      if (options.ignoreCertificatesFor.isNotEmpty) {
        var ignoreCerts = toHostsMap(options.ignoreCertificatesFor);
        client.client.badCertificateCallback = (cert, host, port) {
          if (ignoreCerts.containsKey(host)) {
            var ignorePort = ignoreCerts[host];
            return ignorePort == null || ignorePort == port;
          }
          return false;
        };
      }
    }
    return client;
  }
}

class SendContext {
  String method;
  dynamic request;
  dynamic body;
  Map<String, dynamic>? args;
  String? url;
  Uri? uri;
  RequestFilter? requestFilter;
  ResponseFilter? responseFilter;
  dynamic responseAs;
  String assertUrl() {
    if (url != null) return url!;
    if (uri != null) return uri!.toString();
    throw StateError('no url');
  }

  SendContext(
      {this.method = 'GET',
      this.request,
      this.body,
      this.args,
      this.url,
      this.uri,
      this.responseAs,
      this.requestFilter,
      this.responseFilter});
}

class HttpResponseException implements Exception {
  HttpClientResponse response;
  HttpResponseException(this.response);

  ResponseStatus getResponseStatus() {
    return ResponseStatus();
  }
}

class JsonServiceClient implements IServiceClient {
  @override
  String? baseUrl;
  @override
  String? replyBaseUrl;
  @override
  String? oneWayBaseUrl;
  late Map<String, String> headers;
  @override
  String? bearerToken;
  @override
  String? refreshToken;
  String? refreshTokenUri;
  late bool useTokenCookie;
  @override
  String? userName;
  @override
  String? password;
  HttpClient? _client;
  List<Cookie>? cookies;
  RequestFilter? requestFilter;
  ResponseFilter? responseFilter;
  static RequestFilter? globalRequestFilter;
  static ResponseFilter? globalResponseFilter;
  UrlFilter? urlFilter;
  ResponseExceptionFilter? exceptionFilter;
  static ResponseExceptionFilter? globalExceptionFilter;
  @override
  AsyncCallbackFunction? onAuthenticationRequired;
  late int maxRetries;

  set client(HttpClient client) => _client = client;
  HttpClient get client => _client ??= HttpClient();

  @override
  String? getTokenCookie() {
    return cookies?.firstWhereOrNull((x) => x.name == 'ss-tok')?.value;
  }

  @override
  String? getRefreshTokenCookie() {
    return cookies?.firstWhereOrNull((x) => x.name == 'ss-reftok')?.value;
  }

  set connectionTimeout(Duration? duration) =>
      client.connectionTimeout = duration;
  Duration? get connectionTimeout => client.connectionTimeout;

  JsonServiceClient([this.baseUrl = "/"]) {
    basePath = "api";
    headers = {
      HttpHeaders.acceptHeader: "application/json",
    };
    cookies = <Cookie>[];
    maxRetries = 5;
    useTokenCookie = false;
  }

  JsonServiceClient.api([this.baseUrl = "/"]) {
    basePath = "api";
    headers = {
      HttpHeaders.acceptHeader: "application/json",
    };
    cookies = <Cookie>[];
    maxRetries = 5;
    useTokenCookie = false;
  }

  JsonServiceClient.legacy([this.baseUrl = "/"]) {
    basePath = null;
    headers = {};
    cookies = <Cookie>[];
    maxRetries = 5;
    useTokenCookie = false;
  }

  set basePath(String? path) {
    if (path == null) {
      replyBaseUrl = "${combinePaths([baseUrl, "json", "reply"])}/";
      oneWayBaseUrl = "${combinePaths([baseUrl, "json", "oneway"])}/";
    } else {
      replyBaseUrl = "${combinePaths([baseUrl, path])}/";
      oneWayBaseUrl = "${combinePaths([baseUrl, path])}/";
    }
  }

  @override
  void clearCookies() {
    cookies?.clear();
  }

  @override
  Future<ApiResult<T>> api<T>(IReturn<T> request,
      {Map<String, dynamic>? args, String? method}) async {
    try {
      var result =
          await fetch<T>(method ?? resolveHttpMethod(request), request, args);
      return ApiResult<T>(response: result);
    } on Exception catch (e) {
      return ApiResult<T>(error: getResponseStatus(e));
    }
  }

  @override
  Future<ApiResult<EmptyResponse>> apiVoid(IReturnVoid request,
      {Map<String, dynamic>? args, String? method}) async {
    try {
      var result = await fetch<EmptyResponse>(
          method ?? resolveHttpMethod(request), request, args);
      return ApiResult<EmptyResponse>(response: result);
    } on Exception catch (e) {
      return ApiResult<EmptyResponse>(error: getResponseStatus(e));
    }
  }

  Future<T> fetch<T>(String method, dynamic request,
      [Map<String, dynamic>? args, String? url]) {
    return sendRequest<T>(SendContext(
      method: method,
      request: request,
      args: args,
      url: url,
    ));
  }

  @override
  Future<T> get<T>(IReturn<T> request, {Map<String, dynamic>? args}) {
    return send<T>(request, method: "GET", args: args);
  }

  @override
  Future<Map<String, dynamic>> getUrl(String path,
      {Map<String, dynamic>? args}) {
    return sendRequest<Map<String, dynamic>>(
        SendContext(method: "GET", url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> getAs<T>(String path,
      {Map<String, dynamic>? args,
      T? responseAs,
      RequestFilter? requestFilter,
      ResponseFilter? responseFilter}) {
    return sendRequest<T>(SendContext(
        method: "GET",
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<T> post<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic>? args}) {
    return send<T>(request, method: "POST", body: body, args: args);
  }

  @override
  Future<Map<String, dynamic>> postToUrl(String path, dynamic body,
      {Map<String, dynamic>? args}) {
    return sendRequest<Map<String, dynamic>>(SendContext(
        method: "POST", body: body, url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> postAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args,
      T? responseAs,
      RequestFilter? requestFilter,
      ResponseFilter? responseFilter}) {
    return sendRequest<T>(SendContext(
        method: "POST",
        body: body,
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<T> delete<T>(IReturn<T> request, {Map<String, dynamic>? args}) {
    return send<T>(request, method: "DELETE", args: args);
  }

  @override
  Future<Map<String, dynamic>> deleteUrl(String path,
      {Map<String, dynamic>? args}) {
    return sendRequest<Map<String, dynamic>>(
        SendContext(method: "DELETE", url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> deleteAs<T>(String path,
      {Map<String, dynamic>? args,
      T? responseAs,
      RequestFilter? requestFilter,
      ResponseFilter? responseFilter}) {
    return sendRequest<T>(SendContext(
        method: "DELETE",
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<T> put<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic>? args}) {
    return send<T>(request, method: "PUT", body: body, args: args);
  }

  @override
  Future<Map<String, dynamic>> putToUrl(String path, dynamic body,
      {Map<String, dynamic>? args}) {
    return sendRequest<Map<String, dynamic>>(SendContext(
        method: "PUT", body: body, url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args,
      T? responseAs,
      RequestFilter? requestFilter,
      ResponseFilter? responseFilter}) {
    return sendRequest<T>(SendContext(
        method: "PUT",
        body: body,
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<T> patch<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic>? args}) {
    return send<T>(request, method: "PATCH", body: body, args: args);
  }

  @override
  Future<Map<String, dynamic>> patchToUrl(String path, dynamic body,
      {Map<String, dynamic>? args}) {
    return sendRequest<Map<String, dynamic>>(SendContext(
        method: "PATCH", body: body, url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> patchAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args,
      T? responseAs,
      RequestFilter? requestFilter,
      ResponseFilter? responseFilter}) {
    return sendRequest<T>(SendContext(
        method: "PATCH",
        body: body,
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<List<T>> sendAll<T>(Iterable<IReturn<T>> requests,
      {RequestFilter? requestFilter, ResponseFilter? responseFilter}) async {
    if (requests.isEmpty) return <T>[];
    var url = combinePaths([replyBaseUrl, "${nameOf(requests.first)!}[]"]);

    return sendRequest<List<T>>(SendContext(
        method: "POST",
        request: requests.toList(),
        uri: createUri(url),
        responseAs: <T>[],
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<void> sendAllOneWay<T>(Iterable<IReturn<T>> requests,
      {RequestFilter? requestFilter, ResponseFilter? responseFilter}) async {
    if (requests.isEmpty) return;
    var url = combinePaths([oneWayBaseUrl, "${nameOf(requests.first)!}[]"]);

    await sendRequest<List<T>>(SendContext(
        method: "POST",
        request: requests.toList(),
        uri: createUri(url),
        responseAs: <T>[],
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<T> send<T>(IReturn<T> request,
      {String? method,
      dynamic body,
      Map<String, dynamic>? args,
      T? responseAs,
      RequestFilter? requestFilter,
      ResponseFilter? responseFilter}) {
    return sendRequest<T>(SendContext(
        request: request,
        body: body,
        method: method ?? resolveHttpMethod(request),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> _resendRequest<T>(SendContext info) async {
    HttpClientResponse res;
    try {
      var req = await createRequest(info);
      if (urlFilter != null) {
        urlFilter!(req.uri.toString());
      }

      res = await req.close();
    } on Exception catch (e) {
      Log.debug("_resendRequest() createRequest: $e");
      return await handleError(null, e);
    }

    try {
      var response = await createResponse(res, info);
      return response ?? EmptyResponse();
    } on Exception catch (e) {
      Log.debug("_resendRequest() createResponse: $e");
      return await handleError(res, e);
    }
  }

  Future<T> sendRequest<T>(SendContext info) async {
    int statusCode = -1;
    HttpClientResponse res;
    try {
      var req = await createRequest(info);

      if (urlFilter != null) {
        urlFilter!(req.uri.toString());
      }

      res = await req.close();
      statusCode = res.statusCode;
    } on Exception catch (e) {
      Log.debug("sendRequest() createRequest: $e");
      return await handleError(null, e);
    }

    try {
      var response = await createResponse(res, info);
      return response ?? EmptyResponse();
    } on Exception catch (e) {
      var debug = Log.isDebugEnabled();
      if (debug) Log.debug("sendRequest(): statusCode:$statusCode, $e");
      if (statusCode == 401) {
        var hasRefreshTokenCookie = cookies!.any((x) => x.name == "ss-reftok");
        if (refreshToken != null || useTokenCookie || hasRefreshTokenCookie) {
          var jwtRequest = GetAccessToken(refreshToken: refreshToken);
          var url = refreshTokenUri ?? createUrlFromDto("POST", jwtRequest);

          var jwtInfo = SendContext(
              method: "POST", request: jwtRequest, args: null, url: url);
          try {
            var jwtReq = await createRequest(jwtInfo);
            var jwtRes = await jwtReq.close();
            var jwtResponse =
                await createResponse<GetAccessTokenResponse>(jwtRes, jwtInfo);
            bearerToken = jwtResponse!.accessToken;
            if (debug) Log.debug("sendRequest(): bearerToken refreshed");
            return await _resendRequest<T>(info);
          } on Exception catch (jwtEx) {
            if (debug) Log.debug("sendRequest(): jwtEx: $jwtEx");
            return await handleError(
                res, jwtEx, WebServiceExceptionType.RefreshTokenException);
          }
        }

        if (onAuthenticationRequired != null) {
          await onAuthenticationRequired!();
          return await _resendRequest<T>(info);
        }
      }
      return await handleError(res, e);
    }
  }

  Exception raiseError(HttpClientResponse? res, Exception error) {
    if (exceptionFilter != null) {
      exceptionFilter!(res, error);
    }
    if (globalExceptionFilter != null) {
      globalExceptionFilter!(res, error);
    }
    return error;
  }

  Future<HttpClientRequest> createRequest(SendContext info) async {
    var url = info.url ?? info.uri?.toString();
    var method = info.method;
    var request = info.request;
    var body = info.body ?? request;
    var args = info.args;

    if (url == null || url == '') {
      var bodyNotRequestDto = info.request != null && info.body != null;
      if (bodyNotRequestDto) {
        url = combinePaths([replyBaseUrl, nameOf(request)]);
        url = appendQueryString(url, toMap(request));
      } else {
        url = createUrlFromDto(method, request);
      }
    }
    if (url == null) throw ArgumentError.notNull('url');

    if (args != null) url = appendQueryString(url, args);

    String? bodyStr;
    if (hasRequestBody(method)) {
      if (body is String) {
        bodyStr = body;
      } else {
        bodyStr = json.encode(body);
      }
    }

    HttpClientRequest? req;
    Exception? firstEx;
    var uri = info.uri ?? createUri(url);

    for (var attempt = 0; attempt < maxRetries; attempt++) {
      try {
        req = await client.openUrl(method, uri!);
        break;
      } on Exception catch (e, trace) {
        Log.debug("createRequest(): $e\n$trace");
        firstEx ??= e;
      }
    }
    if (req == null) throw firstEx!;

    if (bearerToken != null) {
      req.headers.add(HttpHeaders.authorizationHeader, 'Bearer $bearerToken');
    } else if (userName != null) {
      req.headers.add(HttpHeaders.authorizationHeader,
          'Basic ${base64.encode(utf8.encode('$userName:$password'))}');
    }

    req.cookies.addAll(cookies!);

    req.headers.chunkedTransferEncoding = false;
    headers.forEach((key, val) {
      if (key == HttpHeaders.contentTypeHeader) {
        var parts = val.split("/");
        req!.headers.contentType = ContentType(parts[0], parts[1]);
      } else {
        req!.headers.add(key, val);
      }
    });

    if (bodyStr != null) {
      req.headers.contentType = ContentType.json;
      // var bodyBytes = bodyStr != null ? utf8.encode(bodyStr) : null;
      req.contentLength = utf8.encode(bodyStr).length;
    }

    if (info.requestFilter != null) {
      info.requestFilter!(req);
    }
    if (requestFilter != null) {
      requestFilter!(req);
    }
    if (globalRequestFilter != null) {
      globalRequestFilter!(req);
    }
    if (bodyStr != null) {
      req.write(bodyStr);
    }
    return req;
  }

  Future<T?> createResponse<T>(HttpClientResponse res, SendContext info) async {
    if (res.statusCode >= 300) throw HttpResponseException(res);

    try {
      mergeCookies(res.cookies);
    } on RangeError catch (e) {
      Log.debug("[RangeError] createResponse(): $e");
      //ignore https://github.com/dart-lang/sdk/issues/34220
    }

    if (info.responseFilter != null) {
      info.responseFilter!(res);
    }
    if (responseFilter != null) {
      responseFilter!(res);
    }
    if (globalResponseFilter != null) {
      globalResponseFilter!(res);
    }

    var request = info.request;
    var responseAs = info.responseAs ?? request?.createResponse();

    res.headers.forEach((key, value) {
      if (key.toLowerCase() == "x-cookies") {
        if (value.any((v) => v.split(',').contains('ss-reftok'))) {
          useTokenCookie = true;
        }
      }
    });

    if (res.contentLength == 1) {
      return responseAs;
    }

    if (responseAs is String) {
      var bodyStr = await readFully(res);
      return bodyStr as T;
    }

    if (responseAs is Uint8List) {
      return (await readFullyAsBytes(res)) as T;
    }

    var contentType = res.headers.contentType.toString();
    var isJson = contentType.contains("application/json");
    if (isJson) {
      var jsonStr = await readFully(res);
      var jsonObj = json.decode(jsonStr);
      if (responseAs == null) {
        return jsonObj is T ? jsonObj : null;
      }
      try {
        var ret = convertTo(request, responseAs, jsonObj);
        return ret;
      } on Exception catch (e, trace) {
        Log.error("createResponse(): $e\n$trace", e);
        raiseError(res, e);
        return jsonObj;
      }
    }

    if (res.headers.contentLength == 0 || !isJson) {
      return responseAs is T ? responseAs : null;
    }

    if (res.statusCode == 204 || res.contentLength == 0) {
      //No Content
      return null;
    }

    return json.decode(await readFully(res));
  }

  Future<T> handleError<T>(HttpClientResponse? holdRes, Exception e,
      [WebServiceExceptionType? type]) async {
    if (e is WebServiceException) throw raiseError(holdRes, e);

    var res = e is HttpResponseException ? e.response : holdRes;

    // if (res.bodyUsed)
    //     throw this.raiseError(res, createErrorResponse(res.status, res.statusText, type));

    if (res == null) {
      throw raiseError(
          null,
          WebServiceException()
            ..innerException = e
            ..statusCode = 500
            ..statusDescription = e.toString());
    }

    var webEx = WebServiceException()
      ..statusCode = res.statusCode
      ..statusDescription = res.reasonPhrase
      ..type = type;

    try {
      String str = await readFully(res);
      if (!isJsonObject(str)) {
        webEx.responseStatus = createErrorResponse(
                res.statusCode.toString(), res.reasonPhrase, type)
            .responseStatus;
      } else {
        var jsonObj = json.decode(str);
        webEx.responseStatus = createResponseStatus(jsonObj);
      }
    } on Exception catch (e, trace) {
      Log.warn("handleError(): $e\n$trace");
      webEx.innerException = e;
    }

    throw raiseError(res, webEx);
  }

  void mergeCookies(List<Cookie> cookies) {
    for (var cookie in cookies) {
      this.cookies!.removeWhere((x) => x.name == cookie.name);
      this.cookies!.add(cookie);
    }
  }

  @override
  void close({bool force = false}) {
    if (_client == null) return;
    _client!.close(force: force);
    _client = null;
  }

  /// Posts files with a request DTO using multipart/form-data
  ///
  /// [request] The request DTO
  /// [files] List of file upload entries. Each entry should be a Map with:
  ///   - 'fieldName': String (optional, defaults to 'upload')
  ///   - 'fileName': String
  ///   - 'stream': `List<int>` or `Stream<List<int>>`
  ///   - 'contentType': String (optional, defaults to 'application/octet-stream')
  /// [responseAs] Optional type to deserialize response as
  Future<T> postFileWithRequest<T>(
    IReturn<T> request,
    UploadFile file, {
    RequestFilter? requestFilter,
    ResponseFilter? responseFilter,
  }) async {
    return await postFilesWithRequestAs<T>(
        combinePaths([replyBaseUrl, nameOf(request)]), request, [file],
        responseAs: request.createResponse(),
        requestFilter: requestFilter,
        responseFilter: responseFilter);
  }

  /// Posts files with a request DTO using multipart/form-data
  ///
  /// [request] The request DTO
  /// [files] List of file upload entries. Each entry should be a Map with:
  ///   - 'fieldName': String (optional, defaults to 'upload')
  ///   - 'fileName': String
  ///   - 'stream': `List<int>` or `Stream<List<int>>`
  ///   - 'contentType': String (optional, defaults to 'application/octet-stream')
  /// [responseAs] Optional type to deserialize response as
  Future<T> postFilesWithRequest<T>(
    IReturn<T> request,
    List<UploadFile> files, {
    RequestFilter? requestFilter,
    ResponseFilter? responseFilter,
  }) async {
    return await postFilesWithRequestAs<T>(
        combinePaths([replyBaseUrl, nameOf(request)]), request, files,
        responseAs: request.createResponse(),
        requestFilter: requestFilter,
        responseFilter: responseFilter);
  }

  /// Posts files with a request DTO using multipart/form-data
  ///
  /// [requestUri] The request URI
  /// [request] The request DTO
  /// [files] List of file upload entries. Each entry should be a Map with:
  ///   - 'fieldName': String (optional, defaults to 'upload')
  ///   - 'fileName': String
  ///   - 'stream': `List<int>` or `Stream<List<int>>`
  ///   - 'contentType': String (optional, defaults to 'application/octet-stream')
  /// [responseAs] Optional type to deserialize response as
  Future<T> postFilesWithRequestAs<T>(
    String requestUri,
    dynamic request,
    List<UploadFile> files, {
    T? responseAs,
    RequestFilter? requestFilter,
    ResponseFilter? responseFilter,
  }) async {
    var uri = createUri(toAbsoluteUrl(requestUri))!;
    var req = await client.postUrl(uri);

    // Set up multipart request
    var boundary = _generateBoundary();
    req.headers.set(HttpHeaders.contentTypeHeader,
        'multipart/form-data; boundary=$boundary');

    if (bearerToken != null) {
      req.headers.add(HttpHeaders.authorizationHeader, 'Bearer $bearerToken');
    }

    // Add other headers
    headers.forEach((key, val) {
      if (key != HttpHeaders.contentTypeHeader) {
        req.headers.add(key, val);
      }
    });

    // Create multipart output stream
    var output = BytesBuilder();

    // Convert request to map and add each field as a separate multipart field
    var requestMap = toMap(request);
    if (requestMap != null && requestMap.isNotEmpty) {
      for (var entry in requestMap.entries) {
        if (entry.value != null) {
          // Convert value to JSON string and remove quotes for simple values
          var valueJson = json.encode(entry.value);
          var value = (entry.value is String ||
                      entry.value is num ||
                      entry.value is bool) &&
                  valueJson.contains('"')
              ? valueJson.substring(
                  1, valueJson.length - 1) // Remove quotes for simple types
              : valueJson; // Keep full JSON for complex types

          _writeMultipartField(output, boundary, entry.key, utf8.encode(value),
              'text/plain; charset=utf-8');
        }
      }
    }

    // Add each file
    for (var file in files) {
      var fieldName = file.fieldName ?? 'upload';
      var fileName = file.fileName!;
      var contentType = file.contentType ?? 'application/octet-stream';
      var fileData = file.contents ?? Uint8List(0);

      _writeMultipartFile(
          output, boundary, fieldName, fileName, fileData, contentType);
    }

    // Write final boundary
    output.add(utf8.encode('--$boundary--\r\n'));

    // Set content length and write body
    var body = output.takeBytes();
    req.contentLength = body.length;
    req.add(body);

    // Apply request filters
    if (requestFilter != null) requestFilter(req);
    if (this.requestFilter != null) this.requestFilter!(req);
    if (globalRequestFilter != null) globalRequestFilter!(req);

    // Send request and handle response
    try {
      var res = await req.close();
      var response = await createResponse<T>(
          res,
          SendContext(
              method: 'POST',
              request: request,
              responseAs: responseAs,
              responseFilter: responseFilter));
      return response!;
    } on Exception catch (e) {
      return await handleError(null, e);
    }
  }
}

Future<String> readFully(HttpClientResponse response) async {
  String body = await response.transform(utf8.decoder).join();
  return body;
}

//https://docs.flutter.io/flutter/foundation/consolidateHttpClientResponseBytes.html
Future<Uint8List> readFullyAsBytes(HttpClientResponse response) {
  final Completer<Uint8List> completer = Completer<Uint8List>.sync();
  if (response.contentLength == -1) {
    final List<List<int>> chunks = <List<int>>[];
    int contentLength = 0;
    response.listen((List<int> chunk) {
      chunks.add(chunk);
      contentLength += chunk.length;
    }, onDone: () {
      final Uint8List bytes = Uint8List(contentLength);
      int offset = 0;
      for (List<int> chunk in chunks) {
        bytes.setRange(offset, offset + chunk.length, chunk);
        offset += chunk.length;
      }
      completer.complete(bytes);
    }, onError: completer.completeError, cancelOnError: true);
  } else {
    // If the response has a content length, then allocate a buffer of the correct size.
    final Uint8List bytes = Uint8List(response.contentLength);
    int offset = 0;
    response.listen(
        (List<int> chunk) {
          bytes.setRange(offset, offset + chunk.length, chunk);
          offset += chunk.length;
        },
        onError: completer.completeError,
        onDone: () {
          completer.complete(bytes);
        },
        cancelOnError: true);
  }
  return completer.future;
}

// Helper to generate a unique boundary
String _generateBoundary() {
  var random = Random();
  var chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  return List.generate(32, (index) => chars[random.nextInt(chars.length)])
      .join();
}

// Helper to write a multipart field
void _writeMultipartField(BytesBuilder output, String boundary, String name,
    List<int> value, String contentType) {
  output.add(utf8.encode('--$boundary\r\n'));
  output.add(utf8.encode('Content-Disposition: form-data; name="$name"\r\n'));
  output.add(utf8.encode('Content-Type: $contentType\r\n\r\n'));
  output.add(value);
  output.add(utf8.encode('\r\n'));
}

void _writeMultipartFile(BytesBuilder output, String boundary, String fieldName,
    String fileName, List<int> fileData, String contentType) {
  // Start boundary
  output.add(utf8.encode('--$boundary\r\n'));
  // Headers
  output.add(utf8.encode(
      'Content-Disposition: form-data; name="$fieldName"; filename="$fileName"\r\n'));
  output.add(utf8.encode('Content-Type: $contentType\r\n'));
  // Empty line to separate headers from content
  output.add(utf8.encode('\r\n'));
  // File data without extra line ending
  output.add(fileData);
  // Boundary separator
  output.add(utf8.encode('\r\n'));
}
