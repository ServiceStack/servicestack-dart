part of client;

abstract class IConverter
{
  dynamic toJson(dynamic value, TypeContext context);
  dynamic fromJson(dynamic value, TypeContext context);
}

abstract class IConvertible
{
    TypeContext context;
    fromMap(Map<String, dynamic> map);
    Map<String, dynamic> toJson();
}

enum TypeOf
{
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
  TypeInfo(this.type, {this.create,this.enumValues});
  createInstance() => this.create();
  bool get canCreate => create != null;
}

class TypeContext
{
  String library;
  Map<String, TypeInfo> types;
  String typeName;
  TypeContext childContext;

  TypeContext({this.library, this.types, this.typeName, this.childContext});

  List<String> get genericArgs => getGenericArgs(typeName);

  TypeInfo getTypeInfo(String typeName) => types[typeName] ?? childContext?.getTypeInfo(typeName);

  TypeInfo get typeInfo => getTypeInfo(typeName);

  TypeContext newContext(String typeName) => new TypeContext(typeName:typeName,types:types);

  static TypeContext combine(String typeName, TypeContext parentContext, TypeContext childContext) => 
    parentContext != null 
      ? new TypeContext(typeName: typeName, types: parentContext.types, childContext: childContext)
      : new TypeContext(typeName: typeName, types: childContext.types);
}