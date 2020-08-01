part of servicestack;

abstract class IConverter {
  dynamic toJson(dynamic value, TypeContext context);
  dynamic fromJson(dynamic value, TypeContext context);
}

abstract class IConvertible {
  TypeContext context;
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

class ClientConfig
{
  static ClientFilter initClient;
}

class TypeInfo {
  Function create;
  TypeOf type;
  List enumValues;
  TypeInfo(this.type, {this.create, this.enumValues});
  createInstance() => this.create();
  bool get canCreate => create != null;
  dynamic _instance;
  defaultInstance() { return _instance ?? (canCreate ? _instance = createInstance() : null); }
}

class TypeContext {
  String library;
  Map<String, TypeInfo> types;
  String typeName;
  TypeContext childContext;
  bool hasInit = false;

  TypeContext({this.library, this.types, this.typeName, this.childContext}) {}

  List<String> get genericArgs => getGenericArgs(typeName);

  TypeContext init() {
    // runtimeType.toString() different in alt platforms https://forums.servicestack.net/t/dart-client-client-mapping-issue-in-release-build/8754
    // As workaround add additional entries using instance runtimeType.toString() as keys
    if (this.types == null || this.hasInit || this.types.containsKey("__init")) return this;

    var keys = this.types.keys.where((x) => x.indexOf('<') >= 0).toList(growable:false);
    for (var k in keys) {
      var info = this.types[k];
      try {
        if (info.type == TypeOf.Class && info.canCreate) {
          var instance = info.defaultInstance();
          var instanceKey = instance?.runtimeType.toString();
          if (instanceKey != null && !this.types.containsKey(instanceKey)) {
            this.types[instanceKey] = info;
          }
        }
      } catch (e) {
        print("TypeContext.init(): " + e);
      }
    }

    this.hasInit = true;
    this.types["__init"] = new TypeInfo(TypeOf.Interface);
    return this;
  }

  TypeInfo getTypeInfo(String typeName) {
    this.init();
    return types[typeName] ?? childContext?.getTypeInfo(typeName);
  }

  TypeInfo get typeInfo {
    var ret = getTypeInfo(typeName);
    if (ret == null) {
      throw new ArgumentError("Unknown Type '${typeName}', see: ${docsDartUrl("#generating-unknown-types")}");
    }
    return ret;
  }

  TypeContext newContext(String typeName) =>
      new TypeContext(typeName: typeName, types: types);

  static TypeContext combine(String typeName, TypeContext parentContext, TypeContext childContext) =>
      parentContext != null
          ? new TypeContext(
              typeName: typeName,
              types: parentContext.types,
              childContext: childContext)
          : new TypeContext(typeName: typeName, types: childContext.types);

  void addChildContext(TypeContext childContext) {
    if (this.childContext == null) {
      this.childContext = childContext;
    } else {
      this.childContext = new TypeContext(
          types: this.childContext.types,
          childContext: childContext);
    }
  }
}

abstract class IServiceClient {
  String baseUrl;
  String bearerToken;
  String refreshToken;
  String userName;
  String password;

  Future<T> get<T>(IReturn<T> request, {Map<String, dynamic> args});

  Future<Map<String, dynamic>> getUrl(String path, {Map<String, dynamic> args});

  Future<T> getAs<T>(String path, {Map<String, dynamic> args, T responseAs});

  Future<T> post<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic> args});

  Future<Map<String, dynamic>> postToUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> postAs<T>(String path, dynamic body,
      {Map<String, dynamic> args, T responseAs});

  Future<T> delete<T>(IReturn<T> request, {Map<String, dynamic> args});

  Future<Map<String, dynamic>> deleteUrl(String path,
      {Map<String, dynamic> args});

  Future<T> deleteAs<T>(String path, {Map<String, dynamic> args, T responseAs});

  Future<T> put<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic> args});

  Future<Map<String, dynamic>> putToUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> putAs<T>(String path, dynamic body,
      {Map<String, dynamic> args, T responseAs});

  Future<T> patch<T>(IReturn<T> request,
      {dynamic body, Map<String, dynamic> args});

  Future<Map<String, dynamic>> patchToUrl(String path, dynamic body,
      {Map<String, dynamic> args});

  Future<T> patchAs<T>(String path, dynamic body,
      {Map<String, dynamic> args, T responseAs});

  Future<List<T>> sendAll<T>(Iterable<IReturn<T>> requests);

  Future<void> sendAllOneWay<T>(Iterable<IReturn<T>> requests);

  Future<T> send<T>(IReturn<T> request,
      {String method, Map<String, dynamic> args, T responseAs});
}

class TypeAs {
  static String string = "";
  static Uint8List bytes = new Uint8List(0);
}

typedef void UrlFilter(String url);
typedef Future AsyncCallbackFunction();
typedef void ClientFilter(IServiceClient client);
typedef dynamic GetJson(Map<String,dynamic> map, String propertyName);

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
