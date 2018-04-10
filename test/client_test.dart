library client_test;

import 'dtos/test.dtos.dart';
import 'utils.dart';

import 'dart:convert';
import 'package:test/test.dart';

var jsonAllTypes = '{"id":1,"byte":2,"short":3,"int":4,"long":5,"uShort":6,"uInt":7,"uLong":8,"float":1.1,"double":2.2,"decimal":3.0,"string":"string","dateTime":"\/Date(978307200000)\/","timeSpan":"PT1H","dateTimeOffset":"\/Date(978307200000)\/","guid":"ea762009b66c410b9bf5ce21ad519249","char":"c","keyValuePair":{},"stringList":["A","B","C"],"stringArray":["D","E","F"],"stringMap":{"A":"D","B":"E","C":"F"},"intStringMap":{"1":"A","2":"B","3":"C"},"subType":{"id":1,"name":"name"}}';

void main() {

  test('Does serialize AllTypes', () {
    var dto = createAllTypes();
    var json = jsonEncode(dto);
    print(json);
    Map jsonObj = jsonDecode(json);
    var fromJson = new AllTypes.fromJson(jsonObj);
    assertAllTypes(fromJson);
  });

  test('Does deserialize AllTypes', () {
    Map jsonObj = jsonDecode(jsonAllTypes);
    var dto = new AllTypes.fromJson(jsonObj);
    print(dto);
    assertAllTypes(dto);
  });

  test("description", (){
    var dto = new HelloAllTypes();
    var json = jsonEncode(dto);
    print(json);
  });

  test('inheritance', () {
    var dto = new HelloWithInheritance(name: 'foo')
      ..id = 1;
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = new HelloWithInheritance.fromJson(jsonObj);
    expect(fromJson.name, equals("foo"));
    expect(fromJson.id, equals(1));
  });

}