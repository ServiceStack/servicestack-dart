part of servicestack;

List<String?> splitOnFirst(String? s, String c) {
  if (s == null || s == "") return [s];
  var pos = s.indexOf(c);
  return pos >= 0 ? [s.substring(0, pos), s.substring(pos + 1)] : [s];
}

List<String> splitOnLast(String s, String c) {
  if (s == "") return [s];
  var pos = s.lastIndexOf(c);
  return pos >= 0 ? [s.substring(0, pos), s.substring(pos + 1)] : [s];
}

String? leftPart(String? strVal, String needle) {
  if (strVal == null) return null;
  var pos = strVal.indexOf(needle);
  return pos == -1 ? strVal : strVal.substring(0, pos);
}

String? lastLeftPart(String? strVal, String needle) {
  if (strVal == null) return null;
  var pos = strVal.lastIndexOf(needle);
  return pos == -1 ? strVal : strVal.substring(0, pos);
}

String? rightPart(String? strVal, String needle) {
  if (strVal == null) return null;
  var pos = strVal.indexOf(needle);
  return pos == -1 ? strVal : strVal.substring(pos + needle.length);
}

String lastRightPart(String strVal, String needle) {
  var pos = strVal.lastIndexOf(needle);
  return pos == -1 ? strVal : strVal.substring(pos + needle.length);
}

String trimStart(String text, String character) {
  if (text.length == 0) return "";

  int i = 0;
  while (text[i] == character) {
    i++;
  }
  return text.substring(i).trim();
}

String trimEnd(String text, String character) {
  if (text.length == 0) return "";

  int i = text.length - 1;
  while (text[i] == character) {
    if (--i < 0) {
      return "";
    }
  }
  return text.substring(0, i + 1).trim();
}

List<String> getGenericArgs(String? type) {
  var parts = splitOnFirst(type, "<");
  if (parts.length == 1) return [];

  var argsString = lastLeftPart(parts[1], ">")!;
  return splitGenericArgs(argsString);
}

List<String> splitGenericArgs(String argsString) {
  var to = <String>[];
  var lastPos = 0;
  var inBrackes = 0;
  for (var i = 0; i < argsString.length; i++) {
    var c = argsString[i];
    if (inBrackes > 0) {
      if (c == '<')
        inBrackes++;
      else if (c == '>') inBrackes--;
      continue;
    }
    if (c == '<') {
      inBrackes++;
      continue;
    }
    if (c == ',') {
      var arg = argsString.substring(lastPos, i - lastPos).replaceAll(" ", "");
      to.add(arg);
      lastPos = i + 1;
    }
  }

  var lastArg = argsString.substring(lastPos).replaceAll(" ", "");
  ;
  to.add(lastArg);
  return to;
}

List<String> runtimeGenericTypeDefs(instance, List<int> indexes) {
  var genericArgs = getGenericArgs(nameOf(instance));
  // Generic classes return QueryResponse<Reified> vs QueryResponse<T> if default getTypeName() => "QueryResponse<T>" is used
  // var genericArgs = getGenericArgs(instance.runtimeType.toString());
  var argTypes = <String>[];
  indexes.forEach((i) => argTypes.add(genericArgs[i]));
  return argTypes;
}

String combinePaths(List<String?> paths) {
  List<String> parts = [];
  for (int i = 0; i < paths.length; i++) {
    var arg = paths[i]!;
    if (arg.indexOf("://") == -1)
      parts.addAll(arg.split("/"));
    else
      parts.add(arg.lastIndexOf("/") == arg.length - 1
          ? arg.substring(0, arg.length - 1)
          : arg);
  }
  List<String> combinedPaths = [];
  for (int i = 0; i < parts.length; i++) {
    var part = parts[i];
    if (part == "" || part == ".") continue;
    if (part == "..")
      combinedPaths.removeLast();
    else
      combinedPaths.add(part);
  }
  if (parts[0] == "") combinedPaths.insert(0, "");
  var ret = combinedPaths.join("/");
  return ret.length > 0 ? ret : (combinedPaths.length == 0 ? "/" : ".");
}

bool isMinified(String type) => type.startsWith("minified:");
bool containsMinified(String type) => type.indexOf("minified:") >= 0; //e.g. List<minified:...>

String? nameOf(dynamic o) {
  if (o == null) return "null";

  try {
    if (o is List) {
      var first = o.length > 0 ? o[0] : null;
      if (first != null) {
        var elementType = nameOf(first)!;
        Log.debug("nameOf: List<$elementType>");
        if (!isMinified(elementType))
          return "List<$elementType>";
      }
    } else {
      Function? getTypeName = o.getTypeName;
      if (getTypeName != null) return getTypeName();
    }
  } catch (e) {
    Log.debug("ignored nameOf error: $e, falling back to o.runtimeType: ${o.runtimeType}");
  }

  return o.runtimeType.toString();
}

Uri? createUri(String? url) {
  if (url == null || url.length == 0) return null;

  try {
    var uri = Uri.parse(url);
    return uri;
  } catch (e) {
    //sometimes Uri refuses to parse urls with encodable chars so need to manually parse + reconstruct
    var parts = url.split("://");
    if (parts.length != 2) throw FormatException("Invalid URL: '${url}'");

    var urlParts = splitOnFirst(parts[1], "/");
    var relativeUrl = urlParts.length == 1 ? "/" : "/" + urlParts[1]!;

    var relativeUrlParts = splitOnFirst(relativeUrl, "?");
    var path = relativeUrlParts[0];

    Map<String?, String?>? query = null;

    if (relativeUrlParts.length == 2) {
      query = Map<String?, String?>();
      var qs = relativeUrlParts[1]!;
      var qsParts = qs.split("&");
      for (var qsPart in qsParts) {
        var kvp = splitOnFirst(qsPart, "=");
        if (kvp.length == 1) continue;
        query[kvp[0]] = kvp[1];
      }
    }

    return parts[0] == "https"
        ? Uri.https(urlParts[0]!, path!, query as Map<String, String>?)
        : Uri.http(urlParts[0]!, path!, query as Map<String, String>?);
  }
}

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

WebServiceException createErrorResponse(String errorCode, String message,
    [WebServiceExceptionType? type]) {
  var error = WebServiceException();
  if (type != null) error.type = type;
  error.responseStatus = ResponseStatus()
    ..errorCode = errorCode
    ..message = message;
  return error;
}

bool hasRequestBody(String method) => !(method == "GET" ||
    method == "DELETE" ||
    method == "HEAD" ||
    method == "OPTIONS");

bool isJsonObject(String str) => str.trim().startsWith("{");

String? appendQueryString(String url, Map<String, dynamic>? args) {
  if (args != null) {
    args.forEach((key, val) {
      if (val == null) return;
      url += url.indexOf("?") >= 0 ? "&" : "?";
      url += key + "=" + qsValue(val)!;
    });
  }
  return url;
}

String? qsValue(arg) {
  if (arg == null) return "";
  if (arg is Uint8List) {
    return base64.encode(arg);
  }
  if (arg is String) {
    return Uri.encodeComponent(arg);
  }
  if (arg is List) {
    var sb = StringBuffer();
    for (var x in arg) {
      if (sb.length > 0) sb.write(",");
      sb.write(qsValue(x));
    }
    return sb.toString();
  }
  if (arg is IConvertible) {
    arg = arg.toJson();
  }
  if (arg is Map) {
    var sb = StringBuffer();
    arg.forEach((key, val) {
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

Map<String, dynamic>? toMap(request) {
  try {
    var ret = request.toJson();
    return ret;
  } catch (e) {
    return null;
  }
}

String sanitizeKey(String key) => key.toLowerCase().replaceAll("_", "");

ResponseStatus? createResponseStatus(Map<String, dynamic>? obj) {
  if (obj == null) return null;
  var to = ResponseStatus();
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
      to.errors = [];
      for (Map error in errors) {
        var fieldError = ResponseError();
        to.errors!.add(fieldError);
        error.forEach((fieldKey, fieldVal) {
          var sanitizedFieldKey = sanitizeKey(fieldKey);
          if (sanitizedFieldKey == "errorcode") {
            fieldError.errorCode = fieldVal;
          } else if (sanitizedFieldKey == "fieldname") {
            fieldError.fieldName = fieldVal;
          } else if (sanitizedFieldKey == "message") {
            fieldError.message = fieldVal;
          } else if (sanitizedFieldKey == "meta") {
            fieldError.meta = JsonConverters.toStringMap(fieldVal);
          }
        });
      }
    } else if (sanitizedKey == "meta") {
      to.meta = JsonConverters.toStringMap(val);
    }
  });
  return to;
}

dynamic findValue(Map<String, dynamic> map, String key) {
  var findKey = sanitizeKey(key);
  for (var k in map.keys) {
    if (sanitizeKey(k) == findKey) {
      return map[k];
    }
  }
  return null;
}

String docsDartUrl(String suffix) {
  return docsUrl("dart-add-servicestack-reference${suffix}");
}

String docsUrl(String suffix) {
  return "https://docs.servicestack.net/${suffix}";
}

Map<String,int?> toHostsMap(List<String> urls) {
  var to = Map<String,int?>();
  urls.forEach((hostname) {
    var host = hostname;
    int? port = null;
    if (host.indexOf('://') >= 0) {
      host = rightPart(host, '://')!;
    }
    if (host.indexOf('/') >= 0) {
      host = leftPart(host, '/')!;
    }
    if (host.indexOf('?') >= 0) {
      host = leftPart(host, '?')!;
    }
    if (host.indexOf(':') >= 0) {
      port = int.parse(rightPart(host, ':')!);
      host = leftPart(host, ':')!;
    }
    to[host] = port;
  });
  return to;
}

// From .NET Guid to Guid string
String fromGuid(String guid) => guid;

// From Guid string to .NET Guid
String toGuid(String guid) => guid;

