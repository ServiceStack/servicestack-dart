part of client;

abstract class IServiceClient {
  String baseUrl;
  String bearerToken;
  String userName;
  String password;

  Future<T> get<T>(IReturn<T> request, {Map<String, dynamic> args});

  Future<Map<String, dynamic>> getUrl(String path, {Map<String, dynamic> args});

  Future<T> getAs<T>(String path,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter});

  Future<T> post<T>(IReturn<T> request, {dynamic body, Map<String, dynamic> args});

  Future<Map<String, dynamic>> postToUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> postAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter});

  Future<T> delete<T>(IReturn<T> request, {Map<String, dynamic> args});

  Future<Map<String, dynamic>> deleteUrl(String path,
      {Map<String, dynamic> args});

  Future<T> deleteAs<T>(String path,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter});

  Future<T> put<T>(IReturn<T> request, {dynamic body, Map<String, dynamic> args});

  Future<Map<String, dynamic>> putToUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter});

  Future<T> patch<T>(IReturn<T> request, {dynamic body, Map<String, dynamic> args});

  Future<Map<String, dynamic>> patchToUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> patchAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter});

  Future<T> send<T>(IReturn<T> request,
      {String method,
      Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter});

  Future<T> sendRequest<T>(SendContext requestInfo);
}

typedef void RequestFilter(HttpClientRequest req);
typedef void UrlFilter(String url);
typedef void ResponseFilter(HttpClientResponse res);
typedef void ResponseExceptionFilter(HttpClientResponse res, Exception e);
typedef Future AsyncCallbackFunction();

class TypeAs {
  static String string = "";
  static Uint8List bytes = new Uint8List(0);
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

enum WebServiceExceptionType {
  RefreshTokenException,
}

class WebServiceException implements Exception {
  int statusCode;
  String statusDescription;
  WebServiceExceptionType type;
  String get message => responseStatus != null
      ? responseStatus.message ?? responseStatus.errorCode
      : statusDescription;
  dynamic innerException;
  ResponseStatus responseStatus;
}

class JsonServiceClient implements IServiceClient {
  String baseUrl;
  String replyBaseUrl;
  String oneWayBaseUrl;
  String mode;
  String credentials;
  Map<String, String> headers;
  String bearerToken;
  String refreshToken;
  String refreshTokenUri;
  String userName;
  String password;
  HttpClient client;
  List<Cookie> cookies;
  RequestFilter requestFilter;
  ResponseFilter responseFilter;
  static RequestFilter globalRequestFilter;
  static ResponseFilter globalResponseFilter;
  UrlFilter urlFilter;
  ResponseExceptionFilter exceptionFilter;
  static ResponseExceptionFilter globalExceptionFilter;
  AsyncCallbackFunction onAuthenticationRequired;

  JsonServiceClient([this.baseUrl = "/"]) {
    replyBaseUrl = combinePaths([baseUrl, "json", "reply"]) + "/";
    oneWayBaseUrl = combinePaths([baseUrl, "json", "oneway"]) + "/";
    mode = "cors";
    credentials = "include";
    headers = {
      HttpHeaders.ACCEPT: "application/json",
    };
    client = new HttpClient();
    cookies = new List<Cookie>();
  }

  void setCredentials(String userName, String password) {
    this.userName = userName;
    this.password = password;
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

  Future<T> post<T>(IReturn<T> request, {dynamic body, Map<String, dynamic> args}) {
    return send<T>(request, method: "POST", body:body, args: args);
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

  Future<T> put<T>(IReturn<T> request, {dynamic body, Map<String, dynamic> args}) {
    return send<T>(request, method: "PUT", body:body, args: args);
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

  Future<T> patch<T>(IReturn<T> request, {dynamic body, Map<String, dynamic> args}) {
    return send<T>(request, method: "PATCH", body:body, args: args);
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

  Future<List<T>> sendAll<T>(Iterable<IReturn<T>> requests, {RequestFilter requestFilter,
      ResponseFilter responseFilter}) async {
    if (requests == null || requests.length == 0)
      return new List<T>();
    var url = combinePaths([replyBaseUrl, nameOf(requests.first) + "[]"]);

    return this.sendRequest<List<T>>(new SendContext(
      method: "POST",
      request: requests.toList(),
      uri: createUri(url),
      responseAs: new List<T>(),
      requestFilter:requestFilter,
      responseFilter: responseFilter));
  }

  Future<void> sendAllOneWay<T>(Iterable<IReturn<T>> requests, {RequestFilter requestFilter,
      ResponseFilter responseFilter}) async {
    if (requests == null || requests.length == 0)
      return new List<T>();
    var url = combinePaths([oneWayBaseUrl, nameOf(requests.first) + "[]"]);

    await this.sendRequest<List<T>>(new SendContext(
      method: "POST",
      request: requests.toList(),
      uri: createUri(url),
      responseAs: new List<T>(),
      requestFilter:requestFilter,
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
        body:body,
        method: method ?? resolveHttpMethod(request),
        args: args,
        responseAs: responseAs,
        requestFilter: requestFilter,
        responseFilter: responseFilter));
  }

  String toAbsoluteUrl(String relativeOrAbsoluteUrl) {
    return relativeOrAbsoluteUrl.startsWith("http://") ||
            relativeOrAbsoluteUrl.startsWith("https://")
        ? relativeOrAbsoluteUrl
        : combinePaths([baseUrl, relativeOrAbsoluteUrl]);
  }

  Future<T> sendRequest<T>(SendContext info) async {
    var req = await createRequest(info);

    if (urlFilter != null) {
      urlFilter(req.uri.toString());
    }

    HttpClientResponse res = null;

    resendRequest() async {
      req = await createRequest(info);
      if (urlFilter != null) {
        urlFilter(req.uri.toString());
      }            
      try {
        res = await req.close();
        var response = await createResponse(res, info);
        return response;
      } on Exception catch (e) {
        return await handleError(res, e);
      }
    }

    try {
      res = await req.close();

      var response = await createResponse(res, info);
      return response;
    } on Exception catch (e) {
      if (res.statusCode == 401) {

        if (refreshToken != null) {
          var jwtRequest = new GetAccessToken(refreshToken: this.refreshToken);
          var url = refreshTokenUri ?? createUrlFromDto("POST", jwtRequest);
          
          var jwtInfo = new SendContext(method: "POST", request:jwtRequest, args: null, url:url);
          try {
            var jwtReq = await createRequest(jwtInfo);
            var jwtRes = await jwtReq.close();
            var jwtResponse = await createResponse<GetAccessTokenResponse>(jwtRes, jwtInfo);
            bearerToken = jwtResponse.accessToken;
            return await resendRequest();
          } on Exception catch(jwtEx) {
            return await handleError(res, jwtEx, WebServiceExceptionType.RefreshTokenException);
          }
        }

        if (onAuthenticationRequired != null) {
          await onAuthenticationRequired();
          return await resendRequest();
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

    String bodyStr = null;
    if (hasRequestBody(method)) {
      if (body is String) {
        bodyStr = body;
      } else {
        bodyStr = json.encode(body);
      }
    }

    var req = await client.openUrl(method, info.uri ?? createUri(url));

    if (bearerToken != null)
      req.headers.add(HttpHeaders.AUTHORIZATION, 'Bearer ' + bearerToken);
    else if (userName != null)
      req.headers.add(HttpHeaders.AUTHORIZATION,
          'Basic ' + base64.encode(utf8.encode('${userName}:${password}')));

    req.cookies.addAll(this.cookies);

    req.headers.chunkedTransferEncoding = false;
    headers.forEach((key, val) {
      if (key == HttpHeaders.CONTENT_TYPE) {
        var parts = val.split("/");
        req.headers.contentType = new ContentType(parts[0], parts[1]);
      } else {
        req.headers.add(key, val);
      }
    });

    if (bodyStr != null) {
      req.headers.contentType = ContentType.JSON;
      req.contentLength = bodyStr.length;
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
      req.write(bodyStr);
    }
    return req;
  }

  String createUrlFromDto<T>(String method, dynamic request) {
    var url = combinePaths([this.replyBaseUrl, nameOf(request)]);

    if (!hasRequestBody(method)) url = appendQueryString(url, toMap(request));

    return url;
  }

  Future<T> createResponse<T>(HttpClientResponse res, SendContext info) async {
    if (res.statusCode >= 300) throw new HttpResponseException(res);

    mergeCookies(res.cookies);

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
      var bodyStr = await res.transform(utf8.decoder).join();
      return bodyStr as T;
    }

    if (responseAs is Uint8List) {
      return (await consolidateHttpClientResponseBytes(res)) as T;
    }

    var contentType = res.headers.contentType.toString();
    var isJson =
        contentType != null && contentType.indexOf("application/json") != -1;
    if (isJson) {
      var jsonObj = json.decode(await res.transform(utf8.decoder).join());
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
              responseListType: existingInfo 
                ?? new TypeInfo(TypeOf.Class, create: () => responseAs) 
            },
            childContext: reqContext);
        }
        fromMap = responseAs is List 
          ? (json) => new ListConverter().fromJson(jsonObj, reqContext)
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
    return json.decode(await res.transform(utf8.decoder).join());
  }

  handleError(HttpClientResponse holdRes, Exception e,
      [WebServiceExceptionType type]) async {
    if (e is WebServiceException) throw raiseError(holdRes, e);

    var res = e is HttpResponseException ? e.response : holdRes;

    // if (res.bodyUsed)
    //     throw this.raiseError(res, createErrorResponse(res.status, res.statusText, type));

    var webEx = new WebServiceException()
      ..statusCode = res.statusCode
      ..statusDescription = res.reasonPhrase
      ..type = type;

    try {
      String str = await res.transform(utf8.decoder).join();
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
}

WebServiceException createErrorResponse(String errorCode, String message,
    [WebServiceExceptionType type]) {
  var error = new WebServiceException();
  if (type != null) error.type = type;
  error.responseStatus = new ResponseStatus()
    ..errorCode = errorCode
    ..message = message;
  return error;
}

bool hasRequestBody(String method) => !(method == "GET" ||
    method == "DELETE" ||
    method == "HEAD" ||
    method == "OPTIONS");

String resolveHttpMethod(request) {
  return request is IGet
      ? "GET"
      : request is IPut
          ? "PUT"
          : request is IDelete
              ? "DELETE"
              : request is IPatch
                  ? "PATCH"
                  : request is IOptions ? "OPTIONS" : "POST";
}

bool isJsonObject(String str) => str != null && str.trim().startsWith("{");

String nameOf(dynamic o) {
  if (o == null) return "null";

  try {
    Function getTypeName = o.getTypeName;
    if (getTypeName != null) return getTypeName();
  } catch (e) {}

  return o.runtimeType.toString();
}

String appendQueryString(String url, Map<String, dynamic> args) {
  args.forEach((key, val) {
    if (val == null) return;
    url += url.indexOf("?") >= 0 ? "&" : "?";
    url += key + "=" + qsValue(val);
  });
  return url;
}

String qsValue(arg) {
  if (arg == null) return "";
  if (arg is Uint8List) {
    return base64.encode(arg);
  }
  if (arg is String) {
    return Uri.encodeComponent(arg);
  }
  if (arg is List) {
    var sb = new StringBuffer();
    for (var x in arg) {
      if (sb.length > 0) sb.write(",");
      sb.write(qsValue(x));      
    }
    return sb.toString();
  }
  if (arg is IConvertible) {
    arg = (arg as IConvertible).toJson();
  }
  if (arg is Map) {
    var sb = new StringBuffer();
    arg.forEach((key,val) {
      if (val == null) return;
      if (sb.length > 0) sb.write(",");
      sb.write(_toString(key));
      sb.write(":");
      sb.write(qsValue(val));
    });
    return "{" + sb.toString() + "}";
  }
  return arg.toString();
}

Map<String, dynamic> toMap(request) {
  try {
    var ret = request.toJson();
    return ret;
  } catch (e) {
    return null;
  }
}

String sanitizeKey(String key) =>
    key != null ? key.toLowerCase().replaceAll("_", "") : null;

ResponseStatus createResponseStatus(Map<String, dynamic> obj) {
  if (obj == null) return null;
  var to = new ResponseStatus();
  var status = findValue(obj, "responseStatus") ?? obj;

  status.forEach((key, val) {
    var sanitizedKey = sanitizeKey(key);
    if (sanitizedKey == "errorcode") {
      to.errorCode = val;
    } else if (sanitizedKey == "message") {
      to.message = val;
    } else if (sanitizedKey == "stacktrace") {
      to.stackTrace = val;
    } else if (sanitizedKey == "errors") {
      List errors = val;
      to.errors = new List<ResponseError>();
      for (Map error in errors) {
        var fieldError = new ResponseError();
        to.errors.add(fieldError);
        error.forEach((fieldKey, fieldVal) {
          var sanitizedFieldKey = sanitizeKey(fieldKey);
          if (sanitizedFieldKey == "errorcode") {
            fieldError.errorCode = fieldVal;
          } else if (sanitizedFieldKey == "fieldname") {
            fieldError.fieldName = fieldVal;
          } else if (sanitizedFieldKey == "message") {
            fieldError.message = fieldVal;
          } else if (sanitizedFieldKey == "meta") {
            fieldError.meta = fieldVal;
          }
        });
      }
    } else if (sanitizedKey == "meta") {
      to.meta = val;
    }
  });
  return to;
}

dynamic findValue(Map<String, dynamic> map, String key) {
  if (map != null) {
    var findKey = sanitizeKey(key);
    for (var k in map.keys) {
      if (sanitizeKey(k) == findKey) {
        return map[k];
      }
    }
  }
  return null;
}

Uri createUri(String url) {
  if (url == null || url.length == 0) return null;

  try {
    var uri = Uri.parse(url);
    return uri;
  } catch(e) {
    //sometimes Uri refuses to parse urls with encodable chars so need to manually parse + reconstruct
    var parts = url.split("://");
    if (parts.length != 2)
      throw new FormatException("Invalid URL: '${url}'");

    var urlParts = splitOnFirst(parts[1], "/");
    var relativeUrl = urlParts.length == 1
      ? "/"
      : "/" + urlParts[1];

    var relativeUrlParts = splitOnFirst(relativeUrl, "?");
    var path = relativeUrlParts[0];

    Map<String,String> query = null;

    if (relativeUrlParts.length == 2) {
      query = new Map<String,String>();
      var qs = relativeUrlParts[1];
      var qsParts = qs.split("&");
      for (var qsPart in qsParts) {
        var kvp = splitOnFirst(qsPart, "=");
        if (kvp.length == 1) continue;
        query[kvp[0]] = kvp[1];
      }
    }

    return parts[0] == "https"
      ? new Uri.https(urlParts[0], path, query)
      : new Uri.http(urlParts[0], path, query);
  }
}

//https://docs.flutter.io/flutter/foundation/consolidateHttpClientResponseBytes.html
Future<Uint8List> consolidateHttpClientResponseBytes(
    HttpClientResponse response) {
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
