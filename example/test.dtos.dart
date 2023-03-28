/* Options:
Date: 2023-03-28 10:25:23
Version: 6.51
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://test.servicestack.net

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
IncludeTypes: Hello.*
//ExcludeTypes: 
//DefaultImports: package:servicestack/servicestack.dart,dart:typed_data,dart:collection
*/

import 'package:servicestack/servicestack.dart';
import 'dart:typed_data';
import 'dart:collection';

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
class Hello implements IReturn<HelloResponse>, IConvertible {
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
