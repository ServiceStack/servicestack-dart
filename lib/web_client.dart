import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:web/web.dart' as web;
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import './servicestack.dart';
export './servicestack.dart';

typedef WebRequestFilter = void Function(Request req);
typedef WebResponseFilter = void Function(Response res);
typedef WebResponseExceptionFilter = void Function(Response? res, Exception e);

class ClientFactory {
  static IServiceClient create([String baseUrl = "/"]) {
    var client = JsonWebClient(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient!(client);
    }
    return client;
  }

  static IServiceClient api([String baseUrl = "/"]) {
    var client = JsonWebClient.api(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient!(client);
    }
    return client;
  }

  static IServiceClient legacy([String baseUrl = "/"]) {
    var client = JsonWebClient.legacy(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient!(client);
    }
    return client;
  }

  static IServiceClient createWith(ClientOptions options) {
    var client = create(options.baseUrl);
    return client;
  }

  static IServiceClient apiWith(ClientOptions options) {
    var client = api(options.baseUrl);
    return client;
  }
}

class SendWebContext {
  String method;
  dynamic request;
  dynamic body;
  Map<String, dynamic>? args;
  String? url;
  Uri? uri;
  WebRequestFilter? requestFilter;
  WebResponseFilter? responseFilter;
  dynamic responseAs;
  SendWebContext(
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

class WebResponseException implements Exception {
  Response response;
  WebResponseException(this.response);

  ResponseStatus getResponseStatus() {
    return ResponseStatus();
  }
}

class JsonWebClient implements IServiceClient {
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
  @override
  String? userName;
  @override
  String? password;
  late bool useTokenCookie;
  WebRequestFilter? requestFilter;
  WebResponseFilter? responseFilter;
  static WebRequestFilter? globalRequestFilter;
  static WebResponseFilter? globalResponseFilter;
  UrlFilter? urlFilter;
  WebResponseExceptionFilter? exceptionFilter;
  static WebResponseExceptionFilter? globalExceptionFilter;
  @override
  AsyncCallbackFunction? onAuthenticationRequired;
  late BrowserClient client;
  late int maxRetries;

  set withCredentials(bool value) => client.withCredentials = value;
  bool get withCredentials => client.withCredentials;

  JsonWebClient([this.baseUrl = "/"]) {
    basePath = "api";
    headers = {
      "Accept": "application/json",
    };
    client = BrowserClient()..withCredentials = true;
    maxRetries = 5;
    useTokenCookie = false;
  }

  JsonWebClient.api([this.baseUrl = "/"]) {
    basePath = "api";
    headers = {};
    client = BrowserClient()..withCredentials = true;
    maxRetries = 5;
    useTokenCookie = false;
  }

  JsonWebClient.legacy([this.baseUrl = "/"]) {
    basePath = null;
    headers = {
      "Accept": "application/json",
    };
    client = BrowserClient()..withCredentials = true;
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
  String? getTokenCookie() => cookies['ss-tok'];
  @override
  String? getRefreshTokenCookie() => cookies['ss-reftok'];

  Map<String, String> get cookies {
    var map = <String, String>{};
    var cookieStr = web.document.cookie;
    if (cookieStr.isNotEmpty) {
      cookieStr.split(';').forEach((x) {
        var parts = x.split('=');
        if (parts.length >= 2) {
          map[parts[0].trim()] = Uri.decodeComponent(parts[1].trim());
        }
      });
    }
    return map;
  }

  @override
  void clearCookies() {
    var cookieStr = web.document.cookie;
    if (cookieStr.isNotEmpty) {
      var cookies = cookieStr.split(";");
      for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i];
        var eqPos = cookie.indexOf("=");
        var name = eqPos > -1 ? cookie.substring(0, eqPos) : cookie;
        web.document.cookie = "$name=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
      }
    }
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
    return sendRequest<T>(SendWebContext(
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
        SendWebContext(method: "GET", url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> getAs<T>(String path,
      {Map<String, dynamic>? args,
      T? responseAs,
      WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) {
    return sendRequest<T>(SendWebContext(
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
    return sendRequest<Map<String, dynamic>>(SendWebContext(
        method: "POST", body: body, url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> postAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args,
      T? responseAs,
      WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) {
    return sendRequest<T>(SendWebContext(
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
        SendWebContext(method: "DELETE", url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> deleteAs<T>(String path,
      {Map<String, dynamic>? args,
      T? responseAs,
      WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) {
    return sendRequest<T>(SendWebContext(
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
    return sendRequest<Map<String, dynamic>>(SendWebContext(
        method: "PUT", body: body, url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args,
      T? responseAs,
      WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) {
    return sendRequest<T>(SendWebContext(
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
    return sendRequest<Map<String, dynamic>>(SendWebContext(
        method: "PATCH", body: body, url: toAbsoluteUrl(path), args: args));
  }

  @override
  Future<T> patchAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args,
      T? responseAs,
      WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) {
    return sendRequest<T>(SendWebContext(
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
      {WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) async {
    if (requests.isEmpty) return <T>[];
    var url = combinePaths([replyBaseUrl, "${nameOf(requests.first)!}[]"]);

    return sendRequest<List<T>>(SendWebContext(
        method: "POST",
        request: requests.toList(),
        uri: createUri(url),
        responseAs: <T>[],
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  @override
  Future<void> sendAllOneWay<T>(Iterable<IReturn<T>> requests,
      {WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) async {
    if (requests.isEmpty) return;
    var url = combinePaths([oneWayBaseUrl, "${nameOf(requests.first)!}[]"]);

    await sendRequest<List<T>>(SendWebContext(
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
      WebRequestFilter? requestFilter,
      WebResponseFilter? responseFilter}) {
    return sendRequest<T>(SendWebContext(
        request: request,
        body: body,
        method: method ?? resolveHttpMethod(request),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<T> _resendRequest<T>(SendWebContext info) async {
    Response res;
    try {
      var req = await createRequest(info);
      if (urlFilter != null) {
        urlFilter!(req.url.toString());
      }

      var streamedRes = await client.send(req);
      res = await Response.fromStream(streamedRes);
    } on Exception catch (e) {
      Log.debug("_resendRequest() createRequest: $e");
      return handleError(null, e);
    }

    try {
      var response = await createResponse(res, info);
      return response ?? EmptyResponse();
    } on Exception catch (e) {
      Log.debug("_resendRequest() createResponse: $e");
      return handleError(res, e);
    }
  }

  Future<T> sendRequest<T>(SendWebContext info) async {
    Response? res;
    try {
      var req = await createRequest(info);

      if (urlFilter != null) {
        urlFilter!(req.url.toString());
      }

      var streamedRes = await client.send(req);
      res = await Response.fromStream(streamedRes);
    } on Exception catch (e) {
      Log.debug("sendRequest() createResponse: $e");
      handleError(null, e);
    }

    try {
      var response = await createResponse(res, info);
      return response ?? EmptyResponse();
    } on Exception catch (e) {
      var debug = Log.isDebugEnabled();
      if (debug) Log.debug("sendRequest(): statusCode:${res.statusCode}, $e");
      if (res.statusCode == 401) {
        if (refreshToken != null || useTokenCookie) {
          var jwtRequest = GetAccessToken(refreshToken: refreshToken);
          var url = refreshTokenUri ?? createUrlFromDto("POST", jwtRequest);

          var jwtInfo = SendWebContext(
              method: "POST", request: jwtRequest, args: null, url: url);
          try {
            var jwtReq = await createRequest(jwtInfo);
            var jwtStreamedRes = await client.send(jwtReq);
            var jwtRes = await Response.fromStream(jwtStreamedRes);
            var jwtResponse =
                await (createResponse<GetAccessTokenResponse>(jwtRes, jwtInfo)
                    as FutureOr<GetAccessTokenResponse>);
            bearerToken = jwtResponse.accessToken;
            if (debug) Log.debug("sendRequest(): bearerToken refreshed");
            return await _resendRequest<T>(info);
          } on Exception catch (jwtEx) {
            if (debug) Log.debug("sendRequest(): jwtEx: $jwtEx");
            handleError(
                res, jwtEx, WebServiceExceptionType.RefreshTokenException);
          }
        }

        if (onAuthenticationRequired != null) {
          await onAuthenticationRequired!();
          return await _resendRequest<T>(info);
        }
      }

      handleError(res, e);
    }
  }

  Exception raiseError(Response? res, Exception error) {
    if (exceptionFilter != null) {
      exceptionFilter!(res, error);
    }
    if (globalExceptionFilter != null) {
      globalExceptionFilter!(res, error);
    }
    return error;
  }

  Future<Request> createRequest(SendWebContext info) async {
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

    Request? req;
    Exception? firstEx;
    var uri = info.uri ?? createUri(url);

    for (var attempt = 0; attempt < maxRetries; attempt++) {
      try {
        req = Request(method, uri!);
        break;
      } on Exception catch (e, trace) {
        Log.debug("createRequest(): $e\n$trace");
        firstEx ??= e;
      }
    }
    if (req == null) throw firstEx!;

    if (bearerToken != null) {
      req.headers["Authorization"] = 'Bearer $bearerToken';
    } else if (userName != null) {
      req.headers["Authorization"] =
          'Basic ${base64.encode(utf8.encode('$userName:$password'))}';
    }

    headers.forEach((key, val) {
      req!.headers[key] = val;
    });

    if (bodyStr != null) {
      req.headers["Content-Type"] = "application/json";
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
      req.body = bodyStr;
    }
    return req;
  }

  Future<T?> createResponse<T>(Response res, SendWebContext info) async {
    if (res.statusCode >= 300) throw WebResponseException(res);

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
        if (value.split(',').contains('ss-reftok')) {
          useTokenCookie = true;
        }
      }
    });

    if (res.contentLength == 1) {
      return responseAs;
    }

    if (responseAs is String) {
      var bodyStr = res.body;
      return bodyStr as T;
    }

    if (responseAs is Uint8List) {
      return res.bodyBytes as T;
    }

    var contentType = res.headers["content-type"];
    var isJson =
        contentType != null && contentType.contains("application/json");
    if (isJson) {
      var jsonObj = json.decode(res.body);
      if (responseAs == null) {
        return jsonObj is T ? jsonObj : null;
      }
      try {
        var ret = convertTo(request, responseAs, jsonObj);
        return ret;
      } on Exception catch (e, trace) {
        Log.error("createResponse(): $e\n$trace", e);
        raiseError(res, e);
        return jsonObj is T ? jsonObj : null;
      }
    }

    if (res.contentLength == 0 || (res.contentLength == null && !isJson)) {
      return responseAs is T ? responseAs : null;
    }
    return json.decode(res.body);
  }

  Never handleError(Response? holdRes, Exception e,
      [WebServiceExceptionType? type]) {
    if (e is WebServiceException) throw raiseError(holdRes, e);

    var res = e is WebResponseException ? e.response : holdRes!;

    // if (res.bodyUsed)
    //     throw this.raiseError(res, createErrorResponse(res.status, res.statusText, type));

    var webEx = WebServiceException()
      ..statusCode = res.statusCode
      ..statusDescription = res.reasonPhrase
      ..type = type;

    try {
      String str = res.body;
      if (!isJsonObject(str)) {
        webEx.responseStatus = createErrorResponse(res.statusCode.toString(),
                res.reasonPhrase ?? res.statusCode.toString(), type)
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

  @override
  void close({bool force = false}) {
    client.close();
  }
}
