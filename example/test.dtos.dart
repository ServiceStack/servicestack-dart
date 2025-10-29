/* Options:
Date: 2024-02-28 03:18:28
Version: 8.13
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://test.servicestack.net

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
IncludeTypes: Hello.*
//ExcludeTypes: 
//DefaultImports: package:servicestack/servicestack.dart,dart:collection,dart:typed_data
*/

import 'package:servicestack/servicestack.dart';

class HelloResponse implements IConvertible {
  String? result;

  HelloResponse({this.result});
  HelloResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloResponse";
  TypeContext? context = _ctx;
}

// @Route("/hello")
// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IConvertible, IPost {
  // @required()
  String? name;

  String? title;

  Hello({this.name, this.title});
  Hello.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'title': title};

  createResponse() => HelloResponse();
  getResponseTypeName() => "HelloResponse";
  getTypeName() => "Hello";
  TypeContext? context = _ctx;
}

TypeContext _ctx =
    TypeContext(library: 'test.servicestack.net', types: <String, TypeInfo>{
  'HelloResponse': TypeInfo(TypeOf.Class, create: () => HelloResponse()),
  'Hello': TypeInfo(TypeOf.Class, create: () => Hello()),
});
