part of servicestack;

abstract class IConverter {
  dynamic toJson(dynamic value, TypeContext context);
  dynamic fromJson(dynamic value, TypeContext context);
}

abstract class IConvertible {
  TypeContext? context;
  fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toJson();
}

enum TypeOf {
  Interface,
  Class,
  AbstractClass,
  GenericDef,
  Enum,
}

class ClientConfig {
  static ClientFilter? initClient;
}

class ClientOptions {
  String baseUrl;
  List<String> ignoreCertificatesFor = [];
  ClientOptions({this.baseUrl = "/", bool ignoreCert = false}) {
    if (ignoreCert) {
      ignoreCertificatesFor = [this.baseUrl];
    }
  }
}

class TypeInfo {
  Function? create;
  TypeOf type;
  List? enumValues;
  TypeInfo(this.type, {this.create, this.enumValues});
  createInstance() => this.create!();
  bool get canCreate => create != null;
  dynamic _instance;
  defaultInstance() {
    return _instance ?? (canCreate ? _instance = createInstance() : null);
  }
}

class UploadFile {
  String? fieldName;
  String? fileName;
  String? contentType;
  Uint8List? contents;
  UploadFile({this.fieldName, this.fileName, this.contentType, this.contents});
}

class TypeContext {
  String? library;
  Map<String, TypeInfo>? types;
  String? typeName;
  TypeContext? childContext;
  static TypeContext Default = _ctx;

  static Map<String?, TypeInfo>? MinifiedTypes;
  static late Map<String?, String> MinifiedTypeNames;
  static bool EnableMinifiedTypes = true;

  TypeContext({this.library, this.types, this.typeName, this.childContext}) {}

  List<String> get genericArgs => getGenericArgs(typeName);

  TypeInfo? getTypeInfo(String typeName) {
    if (!containsMinified(typeName)) {
      var typeInfo = types![typeName] ?? childContext?.getTypeInfo(typeName);
      Log.debug("getTypeInfo(): $typeName => $typeInfo");
      return typeInfo;
    } else {
      if (EnableMinifiedTypes) {
        initMinified();
        var useTypeName = typeName;
        if (!isMinified(typeName)) {
          useTypeName = deminifyTypeName(typeName);
          if (!containsMinified(useTypeName)) {
            return getTypeInfo(useTypeName);
          }
        }
        var minifiedTypeInfo = MinifiedTypes![useTypeName];
        if (minifiedTypeInfo != null) {
          String originalType = "";
          if (Log.isDebugEnabled()) {
            for (var entry in types!.entries) {
              if (entry.value == minifiedTypeInfo) {
                originalType = ", original: '${entry.key}'";
              }
            }
          }
          Log.debug(
              "Found TypeInfo for Minified Type: '${useTypeName}'${originalType}");
          return minifiedTypeInfo;
        }
      }
    }
    Log.error("Could not find TypeInfo for Minified Type: ${typeName}");
    return null;
  }

  deminifyTypeName(String typeName) {
    var args = getGenericArgs(typeName);
    var sb = StringBuffer();
    for (var arg in args) {
      var useTypeName = resolveMinifiedTypeName(arg) ?? arg;
      if (sb.length > 0) sb.write(',');
      sb.write(useTypeName);
    }
    var genericType =
        leftPart(typeName, '<'); //only supports 1 level generic types
    var resolvedTypeName = "$genericType<${sb.toString()}>";
    if (containsMinified(resolvedTypeName)) {
      Log.warn(
          "deminifyTypeName(): Failed to deminify '$typeName' => '$resolvedTypeName'");
    } else {
      Log.debug("deminifyTypeName(): '$typeName' => '$resolvedTypeName'");
    }
    return resolvedTypeName;
  }

  initMinified() {
    if (MinifiedTypes == null) {
      var to = Map<String?, TypeInfo>();
      var toNames = Map<String?, String>();
      for (var entry in types!.entries) {
        var instance = entry.value.defaultInstance();
        if (instance != null) {
          String? minifiedType = instance.runtimeType.toString();
          to[minifiedType] = entry.value;
          toNames[minifiedType] = entry.key;
        }
      }
      MinifiedTypes = to;
      MinifiedTypeNames = toNames;
    }
  }

  TypeInfo? resolveMinifiedType(String typeName) {
    if (!isMinified(typeName))
      throw ArgumentError("$typeName is not a minified type");

    initMinified();
    var originalType = MinifiedTypes![typeName];
    // Log.debug("resolveMinifiedType($typeName) => $originalType");
    return originalType;
  }

  String? resolveMinifiedTypeName(String typeName) {
    if (!isMinified(typeName))
      throw ArgumentError("$typeName is not a minified type");

    initMinified();
    var originalType = MinifiedTypeNames[typeName];
    // Log.debug("resolveMinifiedTypeName($typeName) => $originalType");
    return originalType;
  }

  TypeInfo get typeInfo {
    var ret = getTypeInfo(typeName!);
    if (ret == null) {
      throw ArgumentError(
          "Unknown Type '${typeName}', see: ${docsDartUrl("#generating-unknown-types")}");
    }
    return ret;
  }

  TypeContext newContext(String typeName) =>
      TypeContext(typeName: typeName, types: types);

  static TypeContext combine(String typeName, TypeContext? parentContext,
          TypeContext childContext) =>
      parentContext != null
          ? TypeContext(
              typeName: typeName,
              types: parentContext.types,
              childContext: childContext)
          : TypeContext(typeName: typeName, types: childContext.types);

  void addChildContext(TypeContext childContext) {
    if (this.childContext == null) {
      this.childContext = childContext;
    } else {
      this.childContext = TypeContext(
          types: this.childContext!.types, childContext: childContext);
    }
  }
}

abstract class IServiceClient {
  String? baseUrl;
  String? replyBaseUrl;
  String? oneWayBaseUrl;

  String? bearerToken;
  String? refreshToken;
  String? userName;
  String? password;

  AsyncCallbackFunction? onAuthenticationRequired;
  String? getTokenCookie();
  String? getRefreshTokenCookie();

  void clearCookies();

  Future<ApiResult<T>> api<T>(IReturn<T> request,
      {Map<String, dynamic>? args, String? method});

  Future<ApiResult<EmptyResponse>> apiVoid(IReturnVoid request,
      {Map<String, dynamic>? args, String? method});

  Future<T> get<T>(IReturn<T> request, {Map<String, dynamic>? args});

  Future<Map<String, dynamic>> getUrl(String path,
      {Map<String, dynamic>? args});

  Future<T> getAs<T>(String path, {Map<String, dynamic>? args, T? responseAs});

  Future<T> post<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic>? args});

  Future<Map<String, dynamic>> postToUrl(String path, dynamic body,
      {Map<String, dynamic>? args});

  Future<T> postAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args, T? responseAs});

  Future<T> delete<T>(IReturn<T> request, {Map<String, dynamic>? args});

  Future<Map<String, dynamic>> deleteUrl(String path,
      {Map<String, dynamic>? args});

  Future<T> deleteAs<T>(String path,
      {Map<String, dynamic>? args, T? responseAs});

  Future<T> put<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic>? args});

  Future<Map<String, dynamic>> putToUrl(String path, dynamic body,
      {Map<String, dynamic>? args});

  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args, T? responseAs});

  Future<T> patch<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic>? args});

  Future<Map<String, dynamic>> patchToUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> patchAs<T>(String path, dynamic body,
      {Map<String, dynamic>? args, T? responseAs});

  Future<List<T>> sendAll<T>(Iterable<IReturn<T>> requests);

  Future<void> sendAllOneWay<T>(Iterable<IReturn<T>> requests);

  Future<T> send<T>(IReturn<T> request,
      {String? method, Map<String, dynamic>? args, T? responseAs});

  void close({bool force = false});
}

class TypeAs {
  static String string = "";
  static Uint8List bytes = Uint8List(0);
}

typedef void UrlFilter(String url);
typedef Future AsyncCallbackFunction();
typedef void ClientFilter(IServiceClient client);
typedef dynamic GetJson(Map<String, dynamic> map, String propertyName);

enum WebServiceExceptionType {
  RefreshTokenException,
}

class WebServiceException implements Exception {
  int? statusCode;
  String? statusDescription;
  WebServiceExceptionType? type;
  String? get message => responseStatus != null
      ? responseStatus!.message ?? responseStatus!.errorCode
      : statusDescription;
  dynamic innerException;
  ResponseStatus? responseStatus;
}

extension ServiceClientExtensions on IServiceClient {
  void setCredentials(String? userName, String? password) {
    this.userName = userName;
    this.password = password;
  }

  String? createUrlFromDto<T>(String method, dynamic request) {
    String? url = combinePaths([this.replyBaseUrl, nameOf(request)]);

    if (!hasRequestBody(method)) {
      url = appendQueryString(url, toMap(request));
    }

    return url;
  }

  String toAbsoluteUrl(String relativeOrAbsoluteUrl) {
    return relativeOrAbsoluteUrl.startsWith("http://") ||
            relativeOrAbsoluteUrl.startsWith("https://")
        ? relativeOrAbsoluteUrl
        : combinePaths([this.baseUrl, relativeOrAbsoluteUrl]);
  }
}

abstract class ApiResponse {
  ResponseStatus? get error;
  Object? get responseObject;
  bool get completed;
  bool get failed;
  bool get succeeded;

  String? get errorMessage;
  String? get errorCode;
  List<ResponseError>? get errors;
  String? get errorSummary;
}

class ApiResult<TResponse> implements ApiResponse {
  final TResponse? response;
  ResponseStatus? error;

  ApiResult({this.response, this.error});

  ApiResult.copy([ApiResult<TResponse>? init])
      : error = init?.error,
        response = init?.response;

  Object? get responseObject => response;

  bool get completed => response != null || error != null;
  bool get failed => error?.errorCode != null || error?.message != null;
  bool get succeeded => !failed && response != null;

  String? get errorMessage => error?.message;
  String? get errorCode => error?.errorCode;
  List<ResponseError> get errors => error?.errors ?? [];
  String? get errorSummary =>
      error != null && errors.length == 0 ? errorMessage : null;

  fieldError(String fieldName) {
    var matchField = fieldName.toLowerCase();
    return errors
        .firstWhereOrNull((x) => x.fieldName?.toLowerCase() == matchField);
  }

  fieldErrorMessage(String fieldName) => fieldError(fieldName)?.message;

  hasFieldError(String fieldName) => fieldError(fieldName) != null;

  showSummary([List<String> exceptFields = const []]) {
    if (!failed) return false;
    return exceptFields.every((x) => !hasFieldError(x));
  }

  summaryMessage([List<String> exceptFields = const []]) {
    if (showSummary(exceptFields)) {
      // Return first field error that's not visible
      var fieldSet = exceptFields.map((x) => x.toLowerCase()).toList();
      var fieldError = fieldSet
          .firstWhereOrNull((x) => fieldSet.indexOf(x.toLowerCase()) == -1);
      return fieldError ?? errorMessage;
    }
  }

  addFieldError(String fieldName, String message,
      [String errorCode = 'Exception']) {
    if (error == null) this.error = ResponseStatus();
    var f = fieldError(fieldName);
    if (f != null) {
      f.errorCode = errorCode;
      f.message = message;
    } else {
      var newError = ResponseError();
      newError.fieldName = fieldName;
      newError.errorCode = errorCode;
      newError.message = message;

      error?.errors ??= <ResponseError>[];
      error?.errors!.add(newError);
    }
  }
}
