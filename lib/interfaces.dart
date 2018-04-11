part of client;

abstract class IReturn<T> 
{
    T createResponse();
    String getTypeName();
}

abstract class IReturnVoid 
{
    void createResponse();
    String getTypeName();
}

abstract class IGet {}
abstract class IPost {}
abstract class IPut {}
abstract class IDelete {}
abstract class IPatch {}
abstract class IOptions {}

abstract class IMeta 
{
    Map<String,String> meta;
}

abstract class IHasSessionId 
{
    String sessionId;
}

abstract class IHasVersion 
{
    int version;
}

Map<String, TypeInfo> _builtInTypes = <String, TypeInfo> {
    'List<ResponseError>': new TypeInfo(TypeOf.Class, create:() => new List<ResponseError>()),
    'ResponseError': new TypeInfo(TypeOf.Class, create:() => new ResponseError()),
    'QueryBase': new TypeInfo(TypeOf.AbstractClass),
    'QueryData<T>': new TypeInfo(TypeOf.AbstractClass),
    'QueryDb<T>': new TypeInfo(TypeOf.AbstractClass),
    'QueryDb1<T>': new TypeInfo(TypeOf.AbstractClass),
    'QueryDb2<From, Into>': new TypeInfo(TypeOf.AbstractClass),
};

class ResponseError
{
    String errorCode;
    String fieldName;
    String message;
    Map<String,String> meta;

    ResponseError({this.errorCode,this.fieldName,this.message,this.meta});

    ResponseError fromMap(Map<String, dynamic> map) => new ResponseError.fromJson(map);
    ResponseError.fromJson(Map<String, dynamic> json) {
        errorCode = json['errorCode'];
        fieldName = json['fieldName'];
        message = json['message'];
        meta = json['meta'];
    }
    Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'fieldName': fieldName,
        'message': message,
        'meta': meta
    };
}

class ResponseStatus
{
    String errorCode;
    String message;
    String stackTrace;
    List<ResponseError> errors;
    Map<String,String> meta;

    ResponseStatus({this.errorCode,this.message,this.stackTrace,this.errors,this.meta});

    ResponseStatus fromMap(Map<String, dynamic> map) => new ResponseStatus.fromJson(map);
    ResponseStatus.fromJson(Map<String, dynamic> json) {
        errorCode = json['errorCode'];
        message = json['message'];
        stackTrace = json['stackTrace'];
        errors = JsonConverters.fromJson(json['errors'],'List<ResponseError>',_builtInTypes);
        meta = json['meta'];
    }
    Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'message': message,
        'stackTrace': stackTrace,
        'errors': JsonConverters.toJson(errors,'List<ResponseError>',_builtInTypes),
        'meta': meta
    };
}

abstract class QueryBase
{
    int skip;
    int take;
    String orderBy;
    String orderByDesc;
    String include;
    String fields;
    Map<String,String> meta;

    QueryBase({this.skip,this.take,this.orderBy,this.orderByDesc,this.include,this.fields,this.meta});

    QueryBase.fromJson(Map<String, dynamic> json) {
        skip = json['skip'];
        take = json['take'];
        orderBy = json['orderBy'];
        orderByDesc = json['orderByDesc'];
        include = json['include'];
        fields = json['fields'];
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'skip': skip,
        'take': take,
        'orderBy': orderBy,
        'orderByDesc': orderByDesc,
        'include': include,
        'fields': fields,
        'meta': meta
    };

}
abstract class QueryData<T> extends QueryBase
{
    QueryData();
    QueryData.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}
abstract class QueryDb<T> extends QueryBase
{
    QueryDb();
    QueryDb.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}
abstract class QueryDb1<T> extends QueryBase
{
    QueryDb1();
    QueryDb1.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}
abstract class QueryDb2<From, Into> extends QueryBase
{
    QueryDb2();
    QueryDb2.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}


abstract class IConverter
{
  dynamic toJson(dynamic value, ConverterContext context);
  dynamic fromJson(dynamic value, ConverterContext context);
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

class ConverterContext
{
  Map<String, TypeInfo> types;
  String typeName;
  ConverterContext({this.types, this.typeName});
  List<String> get genericArgs => getGenericArgs(typeName);
  TypeInfo get typeInfo => types[typeName] ?? _builtInTypes[typeName];
  TypeInfo getTypeInfo(String typeName) => types[typeName] ?? _builtInTypes[typeName];
  ConverterContext newContext(String typeName) => new ConverterContext(typeName:typeName,types:types);
}