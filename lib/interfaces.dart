part of client;

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

class TypeInfo {
  Function create;
  TypeOf type;
  List enumValues;
  TypeInfo(this.type, {this.create, this.enumValues});
  createInstance() => this.create();
  bool get canCreate => create != null;
}

class TypeContext {
  String library;
  Map<String, TypeInfo> types;
  String typeName;
  TypeContext childContext;

  TypeContext({this.library, this.types, this.typeName, this.childContext});

  List<String> get genericArgs => getGenericArgs(typeName);

  TypeInfo getTypeInfo(String typeName) =>
      types[typeName] ?? childContext?.getTypeInfo(typeName);

  TypeInfo get typeInfo => getTypeInfo(typeName);

  TypeContext newContext(String typeName) =>
      new TypeContext(typeName: typeName, types: types);

  static TypeContext combine(String typeName, TypeContext parentContext,
          TypeContext childContext) =>
      parentContext != null
          ? new TypeContext(
              typeName: typeName,
              types: parentContext.types,
              childContext: childContext)
          : new TypeContext(typeName: typeName, types: childContext.types);
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
