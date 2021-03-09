import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:html';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import './servicestack.dart';
export './servicestack.dart';

typedef void WebRequestFilter(Request req);
typedef void WebResponseFilter(Response res);
typedef void WebResponseExceptionFilter(Response res, Exception e);

class ClientFactory {
  static IServiceClient create([String baseUrl = "/"]) {
    var client = new JsonWebClient(baseUrl);
    if (ClientConfig.initClient != null) {
      ClientConfig.initClient(client);
    }
    return client;
  }

  static IServiceClient createWith(ClientOptions options) {
    var client = create(options.baseUrl);
    return client;
  }
}

class SendWebContext {
  String method;
  dynamic request;
  dynamic body;
  Map<String, dynamic> args;
  String url;
  Uri uri;
  WebRequestFilter requestFilter;
  WebResponseFilter responseFilter;
  dynamic responseAs;
  SendWebContext(
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

class WebResponseException implements Exception {
  Response response;
  WebResponseException(this.response);

  ResponseStatus getResponseStatus() {
    return new ResponseStatus();
  }
}

class JsonWebClient implements IServiceClient {
  String baseUrl;
  String replyBaseUrl;
  String oneWayBaseUrl;
  Map<String, String> headers;
  String bearerToken;
  String refreshToken;
  String refreshTokenUri;
  String userName;
  String password;
  bool useTokenCookie;
  WebRequestFilter requestFilter;
  WebResponseFilter responseFilter;
  static WebRequestFilter globalRequestFilter;
  static WebResponseFilter globalResponseFilter;
  UrlFilter urlFilter;
  WebResponseExceptionFilter exceptionFilter;
  static WebResponseExceptionFilter globalExceptionFilter;
  AsyncCallbackFunction onAuthenticationRequired;
  BrowserClient client;
  int maxRetries;

  set withCredentials(bool value) => client.withCredentials = value;
  get withCredentials => client.withCredentials;

  JsonWebClient([this.baseUrl = "/"]) {
    replyBaseUrl = combinePaths([baseUrl, "json", "reply"]) + "/";
    oneWayBaseUrl = combinePaths([baseUrl, "json", "oneway"]) + "/";
    headers = {
      "Accept": "application/json",
    };
    client = new BrowserClient()..withCredentials = true;
    maxRetries = 5;
    useTokenCookie = false;
  }

  void clearCookies() {
    var cookies = document.cookie.split(";");
    for (var i = 0; i < cookies.length; i++) {
      var cookie = cookies[i];
      var eqPos = cookie.indexOf("=");
      var name = eqPos > -1 ? cookie.substring(0, eqPos) : cookie;
      document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    }
  }

  Future<T> get<T>(IReturn<T> request, {Map<String, dynamic> args}) {
    return send<T>(request, method: "GET", args: args);
  }

  Future<Map<String, dynamic>> getUrl(String path,
      {Map<String, dynamic> args}) {
    return sendRequest<Map<String, dynamic>>(new SendWebContext(
        method: "GET", url: toAbsoluteUrl(path), args: args));
  }

  Future<T> getAs<T>(String path,
      {Map<String, dynamic> args,
      T responseAs,
      WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) {
    return sendRequest<T>(new SendWebContext(
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
    return sendRequest<Map<String, dynamic>>(new SendWebContext(
        method: "POST", body: body, url: toAbsoluteUrl(path), args: args));
  }

  Future<T> postAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) {
    return sendRequest<T>(new SendWebContext(
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
    return sendRequest<Map<String, dynamic>>(new SendWebContext(
        method: "DELETE", url: toAbsoluteUrl(path), args: args));
  }

  Future<T> deleteAs<T>(String path,
      {Map<String, dynamic> args,
      T responseAs,
      WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) {
    return sendRequest<T>(new SendWebContext(
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
    return sendRequest<Map<String, dynamic>>(new SendWebContext(
        method: "PUT", body: body, url: toAbsoluteUrl(path), args: args));
  }

  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) {
    return sendRequest<T>(new SendWebContext(
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
    return sendRequest<Map<String, dynamic>>(new SendWebContext(
        method: "PATCH", body: body, url: toAbsoluteUrl(path), args: args));
  }

  Future<T> patchAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) {
    return sendRequest<T>(new SendWebContext(
        method: "PATCH",
        body: body,
        url: toAbsoluteUrl(path),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<List<T>> sendAll<T>(Iterable<IReturn<T>> requests,
      {WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) async {
    if (requests == null || requests.length == 0) return new List<T>();
    var url = combinePaths([replyBaseUrl, nameOf(requests.first) + "[]"]);

    return this.sendRequest<List<T>>(new SendWebContext(
        method: "POST",
        request: requests.toList(),
        uri: createUri(url),
        responseAs: new List<T>(),
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  Future<void> sendAllOneWay<T>(Iterable<IReturn<T>> requests,
      {WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) async {
    if (requests == null || requests.length == 0) return new List<T>();
    var url = combinePaths([oneWayBaseUrl, nameOf(requests.first) + "[]"]);

    await this.sendRequest<List<T>>(new SendWebContext(
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
      WebRequestFilter requestFilter,
      WebResponseFilter responseFilter}) {
    return sendRequest<T>(new SendWebContext(
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
        urlFilter(req.url.toString());
      }

      var streamedRes = await client.send(req);
      res = await Response.fromStream(streamedRes);
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

  Future<T> sendRequest<T>(SendWebContext info) async {
    Response res = null;
    try {
      var req = await createRequest(info);

      if (urlFilter != null) {
        urlFilter(req.url.toString());
      }

      var streamedRes = await client.send(req);
      res = await Response.fromStream(streamedRes);
    } on Exception catch (e) {
      return await handleError(null, e);
    }

    try {
      var response = await createResponse(res, info);
      return response;
    } on Exception catch (e) {
      if (res.statusCode == 401) {
        if (refreshToken != null || useTokenCookie) {
          var jwtRequest = new GetAccessToken(refreshToken: this.refreshToken);
          var url = refreshTokenUri ?? createUrlFromDto("POST", jwtRequest);

          var jwtInfo = new SendWebContext(
              method: "POST", request: jwtRequest, args: null, url: url);
          try {
            var jwtReq = await createRequest(jwtInfo);
            var jwtStreamedRes = await client.send(jwtReq);
            var jwtRes = await Response.fromStream(jwtStreamedRes);
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

  raiseError(Response res, Exception error) {
    if (exceptionFilter != null) {
      exceptionFilter(res, error);
    }
    if (globalExceptionFilter != null) {
      globalExceptionFilter(res, error);
    }
    return error;
  }

  Future<Request> createRequest(SendWebContext info) async {
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

    String bodyStr = null;
    if (hasRequestBody(method)) {
      if (body is String) {
        bodyStr = body;
      } else {
        bodyStr = json.encode(body);
      }
    }

    Request req;
    Exception firstEx;
    var uri = info.uri ?? createUri(url);

    for (var attempt = 0; attempt < maxRetries; attempt++) {
      try {
        req = new Request(method, uri);
        break;
      } on Exception catch (e) {
        if (firstEx == null) {
          firstEx = e;
        }
      }
    }
    if (req == null) throw firstEx;

    if (bearerToken != null)
      req.headers["Authorization"] = 'Bearer ' + bearerToken;
    else if (userName != null)
      req.headers["Authorization"] =
          'Basic ' + base64.encode(utf8.encode('${userName}:${password}'));

    headers.forEach((key, val) {
      req.headers[key] = val;
    });

    if (bodyStr != null) {
      req.headers["Content-Type"] = "application/json";
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

    if (bodyStr != null) {
      req.body = bodyStr;
    }
    return req;
  }

  Future<T> createResponse<T>(Response res, SendWebContext info) async {
    if (res.statusCode >= 300) throw new WebResponseException(res);

    if (info.responseFilter != null) {
      info.responseFilter(res);
    }
    if (responseFilter != null) {
      responseFilter(res);
    }
    if (globalResponseFilter != null) {
      globalResponseFilter(res);
    }

    var request = info.request;
    var responseAs = info.responseAs ??
        (request != null ? request.createResponse() : null);

    res.headers.forEach((key, value) {
      if (key.toLowerCase() == "x-cookies") {
        if (value.split(',').indexOf('ss-reftok') >= 0) {
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
        contentType != null && contentType.indexOf("application/json") != -1;
    if (isJson) {
      var jsonObj = json.decode(res.body);
      if (responseAs == null) {
        return jsonObj as T;
      }
      try {
        var ret = convertTo(request, responseAs, jsonObj);
        return ret;
      } on Exception catch (e) {
        raiseError(res, e);
        return jsonObj as T;
      }
    }

    if (res.contentLength == 0 || (res.contentLength == null && !isJson)) {
      return responseAs as T;
    }
    return json.decode(res.body);
  }

  handleError(Response holdRes, Exception e,
      [WebServiceExceptionType type]) async {
    if (e is WebServiceException) throw raiseError(holdRes, e);

    var res = e is WebResponseException ? e.response : holdRes;

    // if (res.bodyUsed)
    //     throw this.raiseError(res, createErrorResponse(res.status, res.statusText, type));

    var webEx = new WebServiceException()
      ..statusCode = res.statusCode
      ..statusDescription = res.reasonPhrase
      ..type = type;

    try {
      String str = res.body;
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

  @override
  void close({bool force = false}) {
    client.close();
  }
}
