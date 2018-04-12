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

  Future<T> post<T>(IReturn<T> request, {Map<String, dynamic> args});

  Future<Map<String, dynamic>> postUrl(String path, dynamic body,
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

  Future<T> put<T>(IReturn<T> request, {Map<String, dynamic> args});

  Future<Map<String, dynamic>> putUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter});

  Future<T> patch<T>(IReturn<T> request, {Map<String, dynamic> args});

  Future<Map<String, dynamic>> patchUrl(String path, dynamic body,
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
typedef void ResponseExceptionFilter(HttpClientResponse res, Error e);

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
  RequestFilter requestFilter;
  ResponseFilter responseFilter;
  dynamic responseAs;
  SendContext(
      {this.method,
      this.request,
      this.body,
      this.args,
      this.url,
      this.responseAs,
      this.requestFilter,
      this.responseFilter});
}

class HttpResponseException implements Exception {
  HttpClientResponse response;
  HttpResponseException(this.response);
}

class JsonServiceClient implements IServiceClient {
  String baseUrl;
  String replyBaseUrl;
  String oneWayBaseUrl;
  String mode;
  String credentials;
  Map<String, String> headers;
  String bearerToken;
  String userName;
  String password;
  HttpClient client;
  RequestFilter requestFilter;
  ResponseFilter responseFilter;
  static RequestFilter globalRequestFilter;
  static ResponseFilter globalResponseFilter;
  UrlFilter urlFilter;
  ResponseExceptionFilter exceptionFilter;
  static ResponseExceptionFilter globalExceptionFilter;

  JsonServiceClient([this.baseUrl = "/"]) {
    replyBaseUrl = combinePaths([baseUrl, "json", "reply"]) + "/";
    oneWayBaseUrl = combinePaths([baseUrl, "json", "oneway"]) + "/";
    mode = "cors";
    credentials = "include";
    headers = {
      HttpHeaders.ACCEPT: "application/json",
    };
    client = new HttpClient();
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

  Future<T> post<T>(IReturn<T> request, {Map<String, dynamic> args}) {
    return send<T>(request, method: "POST", args: args);
  }

  Future<Map<String, dynamic>> postUrl(String path, dynamic body,
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

  Future<T> put<T>(IReturn<T> request, {Map<String, dynamic> args}) {
    return send<T>(request, method: "PUT", args: args);
  }

  Future<Map<String, dynamic>> putUrl(String path, dynamic body,
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

  Future<T> patch<T>(IReturn<T> request, {Map<String, dynamic> args}) {
    return send<T>(request, method: "PATCH", args: args);
  }

  Future<Map<String, dynamic>> patchUrl(String path, dynamic body,
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

  Future<T> send<T>(IReturn<T> request,
      {String method,
      Map<String, dynamic> args,
      T responseAs,
      RequestFilter requestFilter,
      ResponseFilter responseFilter}) {
    return sendRequest<T>(new SendContext(
        request: request,
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

    try {
      res = await req.close();

      var response = await createResponse(res, info);
      return response;
    } catch (e) {
      return handleError(res, e);
    }
  }

  handleError(HttpClientResponse holdRes, Error e) {
    throw raiseError(holdRes, e);
  }

  raiseError(HttpClientResponse res, Error error) {
    if (exceptionFilter != null) {
      exceptionFilter(res, error);
    }
    if (globalExceptionFilter != null) {
      globalExceptionFilter(res, error);
    }
    return error;
  }

  Future<T> createResponse<T>(HttpClientResponse res, SendContext info) async {
    if (res.statusCode != HttpStatus.OK) throw new HttpResponseException(res);

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
        Function fromMap = responseAs.fromMap;
        var ret = fromMap(jsonObj);
        return ret;
      } catch (e) {
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

  Future<HttpClientRequest> createRequest(SendContext info) async {
    var url = info.url;
    var method = info.method;
    var request = info.request;
    var body = request ?? info.body;
    var args = info.args;

    if (url == null || url == '') url = createUrlFromDto(method, request);
    if (args != null) url = appendQueryString(url, args);

    String bodyStr = null;
    if (hasRequestBody(method)) {
      if (body is String) {
        bodyStr = body;
      } else {
        bodyStr = json.encode(body);
      }
    }

    var req = await client.openUrl(method, Uri.parse(url));

    if (bearerToken != null)
      req.headers.add(HttpHeaders.AUTHORIZATION, 'Bearer ' + bearerToken);
    else if (userName != null)
      req.headers.add(HttpHeaders.AUTHORIZATION,
          'Basic ' + base64.encode(utf8.encode('${userName}:${password}')));

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
  return Uri.encodeComponent(arg);
}

Map<String, dynamic> toMap(request) {
  try {
    return request.toJson();
  } catch (e) {
    return null;
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
