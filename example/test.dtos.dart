/* Options:
Date: 2018-08-09 03:02:31
Version: 5.00
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: http://test.servicestack.net

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
IncludeTypes: Hello.*
//ExcludeTypes: 
//DefaultImports: package:servicestack/client.dart,dart:collection,dart:typed_data
*/

import 'package:servicestack/client.dart';

class HelloResponse implements IConvertible
{
    String result;

    HelloResponse({this.result});
    HelloResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

// @Route("/hello")
// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IConvertible
{
    // @Required()
    String name;

    String title;

    Hello({this.name,this.title});
    Hello.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        title = json['title'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'title': title
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "Hello"; }
    TypeContext context = _ctx;
}

TypeContext _ctx = new TypeContext(library: 'test.servicestack.net', types: <String, TypeInfo> {
    'HelloResponse': new TypeInfo(TypeOf.Class, create:() => new HelloResponse()),
    'Hello': new TypeInfo(TypeOf.Class, create:() => new Hello()),
});
