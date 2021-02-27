import 'dart:async';
import 'dart:typed_data';
import 'dart:io';
import 'dart:convert';
import './servicestack.dart';
export './servicestack.dart';

typedef void RequestFilter(HttpClientRequest req);
typedef void ResponseFilter(HttpClientResponse res);
typedef void ResponseExceptionFilter(HttpClientResponse res, Exception e);

class ClientFactory {
  static IServiceClient create(
      [String baseUrl = "/", ClientOptions options = null]) {
    var client = new JsonServiceClient(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient(client);
    }
    return client;
  }

  static IServiceClient createWith(ClientOptions options) {
    var client = create(options.baseUrl);
    if (client is JsonServiceClient) {
      if (options.ignoreCertificatesFor != null &&
          options.ignoreCertificatesFor.isNotEmpty) {
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
  Map<String, dynamic> args;
  String url;
  Uri uri;
  RequestFilter requestFilter;
  ResponseFilter responseFilter;
  dynamic responseAs;
  SendContext(
      {this.method,
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
    return new ResponseStatus();
  }
}

class JsonServiceClient implements IServiceClient {
  String baseUrl;
  String replyBaseUrl;
  String oneWayBaseUrl;
  Map<String, String> headers;
  String bearerToken;
  String refreshToken;
  String refreshTokenUri;
  String userName;
  String password;
  HttpClient _client;
  List<Cookie> cookies;
  RequestFilter requestFilter;
  ResponseFilter responseFilter;
  static RequestFilter globalRequestFilter;
  static ResponseFilter globalResponseFilter;
  UrlFilter urlFilter;
  ResponseExceptionFilter exceptionFilter;
  static ResponseExceptionFilter globalExceptionFilter;
  AsyncCallbackFunction onAuthenticationRequired;
  int maxRetries;

  void set client(HttpClient client) => _client = client;
  HttpClient get client => _client ??= new HttpClient();

  void set connectionTimeout(Duration duration) =>
      client.connectionTimeout = duration;
  Duration get connectionTimeout => client.connectionTimeout;

  JsonServiceClient([this.baseUrl = "/"]) {
    replyBaseUrl = combinePaths([baseUrl, "json", "reply"]) + "/";
    oneWayBaseUrl = combinePaths([baseUrl, "json", "oneway"]) + "/";
    headers = {
      HttpHeaders.acceptHeader: "application/json",
    };
    cookies = new List<Cookie>();
    maxRetries = 5;
  }

  void clearCookies() {
    this.cookies?.clear();
  }

  Future<T> get<T>(IReturn<T> request, {Map<String, dynamic> args}) {
    return send<T>(request, method: "GET", args: args);
  }

  Future<Map<String, dynamic>> getUrl(String path,
      {Map<String, dynamic> args}) {
    return sendRequest<Map<String, dynamic>>(
        new SendContext(method: "GET", url: toAbsoluteUrl(path), args: args));
  }

  Future<T> getAs<T>(String path,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter}) {
    return sendRequest<T>(new SendContext(
        method: "GET",
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> post<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic> args}) {
    return send<T>(request, method: "POST", body: body, args: args);
  }

  Future<Map<String, dynamic>> postToUrl(String path, dynamic body,
      {Map<String, dynamic> args}) {
    return sendRequest<Map<String, dynamic>>(new SendContext(
        method: "POST", body: body, url: toAbsoluteUrl(path), args: args));
  }

  Future<T> postAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter}) {
    return sendRequest<T>(new SendContext(
        method: "POST",
        body: body,
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> delete<T>(IReturn<T> request, {Map<String, dynamic> args}) {
    return send<T>(request, method: "DELETE", args: args);
  }

  Future<Map<String, dynamic>> deleteUrl(String path,
      {Map<String, dynamic> args}) {
    return sendRequest<Map<String, dynamic>>(new SendContext(
        method: "DELETE", url: toAbsoluteUrl(path), args: args));
  }

  Future<T> deleteAs<T>(String path,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter}) {
    return sendRequest<T>(new SendContext(
        method: "DELETE",
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> put<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic> args}) {
    return send<T>(request, method: "PUT", body: body, args: args);
  }

  Future<Map<String, dynamic>> putToUrl(String path, dynamic body,
      {Map<String, dynamic> args}) {
    return sendRequest<Map<String, dynamic>>(new SendContext(
        method: "PUT", body: body, url: toAbsoluteUrl(path), args: args));
  }

  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter}) {
    return sendRequest<T>(new SendContext(
        method: "PUT",
        body: body,
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> patch<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic> args}) {
    return send<T>(request, method: "PATCH", body: body, args: args);
  }

  Future<Map<String, dynamic>> patchToUrl(String path, dynamic body,
      {Map<String, dynamic> args}) {
    return sendRequest<Map<String, dynamic>>(new SendContext(
        method: "PATCH", body: body, url: toAbsoluteUrl(path), args: args));
  }

  Future<T> patchAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter}) {
    return sendRequest<T>(new SendContext(
        method: "PATCH",
        body: body,
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<List<T>> sendAll<T>(Iterable<IReturn<T>> requests,
      {RequestFilter requestFilter, ResponseFilter responseFilter}) async {
    if (requests == null || requests.length == 0) return new List<T>();
    var url = combinePaths([replyBaseUrl, nameOf(requests.first) + "[]"]);

    return this.sendRequest<List<T>>(new SendContext(
        method: "POST",
        request: requests.toList(),
        uri: createUri(url),
        responseAs: new List<T>(),
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<void> sendAllOneWay<T>(Iterable<IReturn<T>> requests,
      {RequestFilter requestFilter, ResponseFilter responseFilter}) async {
    if (requests == null || requests.length == 0) return new List<T>();
    var url = combinePaths([oneWayBaseUrl, nameOf(requests.first) + "[]"]);

    await this.sendRequest<List<T>>(new SendContext(
        method: "POST",
        request: requests.toList(),
        uri: createUri(url),
        responseAs: new List<T>(),
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> send<T>(IReturn<T> request,
      {String method,
      dynamic body,
      Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter}) {
    return sendRequest<T>(new SendContext(
        request: request,
        body: body,
        method: method ?? resolveHttpMethod(request),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> _resendRequest<T>(info) async {
    HttpClientResponse res;
    try {
      var req = await createRequest(info);
      if (urlFilter != null) {
        urlFilter(req.uri.toString());
      }

      res = await req.close();
    } on Exception catch (e) {
      return await handleError(null, e);
    }

    try {
      var response = await createResponse(res, info);
      return response;
    } on Exception catch (e) {
      return await handleError(res, e);
    }
  }

  Future<T> sendRequest<T>(SendContext info) async {
    int statusCode = -1;
    HttpClientResponse res;
    try {
      var req = await createRequest(info);

      if (urlFilter != null) {
        urlFilter(req.uri.toString());
      }

      res = await req.close();
      statusCode = res.statusCode;
    } on Exception catch (e) {
      return await handleError(null, e);
    }

    try {
      var response = await createResponse(res, info);
      return response;
    } on Exception catch (e) {
      if (statusCode == 401) {
        if (refreshToken != null) {
          var jwtRequest = new GetAccessToken(refreshToken: this.refreshToken);
          var url = refreshTokenUri ?? createUrlFromDto("POST", jwtRequest);

          var jwtInfo = new SendContext(
              method: "POST", request: jwtRequest, args: null, url: url);
          try {
            var jwtReq = await createRequest(jwtInfo);
            var jwtRes = await jwtReq.close();
            var jwtResponse =
                await createResponse<GetAccessTokenResponse>(jwtRes, jwtInfo);
            bearerToken = jwtResponse.accessToken;
            return await _resendRequest(info);
          } on Exception catch (jwtEx) {
            return await handleError(
                res, jwtEx, WebServiceExceptionType.RefreshTokenException);
          }
        }

        if (onAuthenticationRequired != null) {
          await onAuthenticationRequired();
          return await _resendRequest(info);
        }
      }
      return await handleError(res, e);
    }
  }

  raiseError(HttpClientResponse res, Exception error) {
    if (exceptionFilter != null) {
      exceptionFilter(res, error);
    }
    if (globalExceptionFilter != null) {
      globalExceptionFilter(res, error);
    }
    return error;
  }

  Future<HttpClientRequest> createRequest(SendContext info) async {
    var url = info.url;
    var method = info.method;
    var request = info.request;
    var body = info.body ?? request;
    var args = info.args;

    if (info.uri == null && (url == null || url == '')) {
      var bodyNotRequestDto = info.request != null && info.body != null;
      if (bodyNotRequestDto) {
        url = combinePaths([this.replyBaseUrl, nameOf(request)]);
        url = appendQueryString(url, toMap(request));
      } else {
        url = createUrlFromDto(method, request);
      }
    }
    if (args != null) url = appendQueryString(url, args);

    String bodyStr;
    if (hasRequestBody(method)) {
      if (body is String) {
        bodyStr = body;
      } else {
        bodyStr = json.encode(body);
      }
    }

    HttpClientRequest req;
    Exception firstEx;
    var uri = info.uri ?? createUri(url);

    for (var attempt = 0; attempt < maxRetries; attempt++) {
      try {
        req = await client.openUrl(method, uri);
        break;
      } on Exception catch (e) {
        if (firstEx == null) {
          firstEx = e;
        }
      }
    }
    if (req == null) throw firstEx;

    if (bearerToken != null)
      req.headers.add(HttpHeaders.authorizationHeader, 'Bearer ' + bearerToken);
    else if (userName != null)
      req.headers.add(HttpHeaders.authorizationHeader,
          'Basic ' + base64.encode(utf8.encode('$userName:$password')));

    req.cookies.addAll(this.cookies);

    req.headers.chunkedTransferEncoding = false;
    headers.forEach((key, val) {
      if (key == HttpHeaders.contentTypeHeader) {
        var parts = val.split("/");
        req.headers.contentType = new ContentType(parts[0], parts[1]);
      } else {
        req.headers.add(key, val);
      }
    });

    if (bodyStr != null) {
      req.headers.contentType = ContentType.json;
      // var bodyBytes = bodyStr != null ? utf8.encode(bodyStr) : null;
      req.contentLength = utf8.encode(bodyStr).length;
      req.write(bodyStr);
    }

    if (info.requestFilter != null) {
      info.requestFilter(req);
    }
    if (requestFilter != null) {
      requestFilter(req);
    }
    if (globalRequestFilter != null) {
      globalRequestFilter(req);
    }
    return req;
  }

  Future<T> createResponse<T>(HttpClientResponse res, SendContext info) async {
    if (res == null) throw new ArgumentError.notNull("res");
    if (res.statusCode >= 300) throw new HttpResponseException(res);

    try {
      mergeCookies(res.cookies);
    } on RangeError catch (e) {
      //print("RangeError: " + e.toString());
      //ignore https://github.com/dart-lang/sdk/issues/34220
    }

    if (info.responseFilter != null) {
      info.responseFilter(res);
    }
    if (responseFilter != null) {
      responseFilter(res);
    }
    if (globalResponseFilter != null) {
      globalResponseFilter(res);
    }

    var responseAs = info.responseAs ??
        (info.request != null ? info.request.createResponse() : null);

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
    var isJson =
        contentType != null && contentType.indexOf("application/json") != -1;
    if (isJson) {
      var jsonStr = await readFully(res);
      var jsonObj = json.decode(jsonStr);
      if (responseAs == null) {
        return jsonObj as T;
      }
      try {
        Function fromMap;

        TypeContext reqContext;
        if (info.request is IConvertible) {
          reqContext = (info.request as IConvertible).context;
          if (responseAs is IConvertible) {
            responseAs.context = reqContext;
          }
        } else if (info.request is List) {
          var firstRequest = info.request[0];
          var firstResponse = firstRequest.createResponse();
          reqContext = (firstRequest as IConvertible).context;
          var responseType = firstResponse.runtimeType.toString();
          var responseListType = "List<${responseType}>";
          var existingInfo = reqContext.getTypeInfo(responseListType);
          reqContext = new TypeContext(
              typeName: responseListType,
              types: {
                //List<T> in Dart 1.9 (non Strong mode) creates non generic List (dynamic)
                responseListType: existingInfo ??
                    new TypeInfo(TypeOf.Class, create: () => responseAs)
              },
              childContext: reqContext);
        }
        fromMap = responseAs is List
            ? (json) => JsonConverters.fromJson(
                json, responseAs.runtimeType.toString(), reqContext)
            : responseAs.fromMap;

        var ret = fromMap(jsonObj);
        return ret;
      } on Exception catch (e) {
        raiseError(res, e);
        return jsonObj;
      }
    }

    if (res.headers.contentLength == 0 ||
        (res.headers.contentLength == null && !isJson)) {
      return responseAs as T;
    }

    if (res.statusCode == 204 || res.contentLength == 0) {
      //No Content
      return null;
    }

    return json.decode(await readFully(res));
  }

  handleError(HttpClientResponse holdRes, Exception e,
      [WebServiceExceptionType type]) async {
    if (e is WebServiceException) throw raiseError(holdRes, e);

    var res = e is HttpResponseException ? e.response : holdRes;

    // if (res.bodyUsed)
    //     throw this.raiseError(res, createErrorResponse(res.status, res.statusText, type));

    if (res == null)
      throw raiseError(
          null,
          new WebServiceException()
            ..innerException = e
            ..statusCode = 500
            ..statusDescription = e.toString());

    var webEx = new WebServiceException()
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
    } on Exception catch (e) {
      webEx.innerException = e;
    }

    throw raiseError(res, webEx);
  }

  void mergeCookies(List<Cookie> cookies) {
    if (cookies == null) return;
    for (var cookie in cookies) {
      this.cookies.removeWhere((x) => x.name == cookie.name);
      this.cookies.add(cookie);
    }
  }

  @override
  void close({bool force = false}) {
    if (_client == null) return;
    _client.close(force: force);
    _client = null;
  }
}

Future<String> readFully(HttpClientResponse response) async {
  String body = await response.transform(utf8.decoder).join();
  return body;
}

//https://docs.flutter.io/flutter/foundation/consolidateHttpClientResponseBytes.html
Future<Uint8List> readFullyAsBytes(HttpClientResponse response) {
  assert(response.contentLength != null);
  final Completer<Uint8List> completer = new Completer<Uint8List>.sync();
  if (response.contentLength == -1) {
    final List<List<int>> chunks = <List<int>>[];
    int contentLength = 0;
    response.listen((List<int> chunk) {
      chunks.add(chunk);
      contentLength += chunk.length;
    }, onDone: () {
      final Uint8List bytes = new Uint8List(contentLength);
      int offset = 0;
      for (List<int> chunk in chunks) {
        bytes.setRange(offset, offset + chunk.length, chunk);
        offset += chunk.length;
      }
      completer.complete(bytes);
    }, onError: completer.completeError, cancelOnError: true);
  } else {
    // If the response has a content length, then allocate a buffer of the correct size.
    final Uint8List bytes = new Uint8List(response.contentLength);
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
