library client_test;
import 'package:test/test.dart';

import 'dtos/test.dtos.dart';
import 'utils.dart';

import 'dart:convert';

var jsonAllTypes = '{"id":1,"byte":2,"short":3,"int":4,"long":5,"uShort":6,"uInt":7,"uLong":8,"float":1.1,"double":2.2,"decimal":3.0,"string":"string","dateTime":"\/Date(978307200000)\/","timeSpan":"PT1H","dateTimeOffset":"\/Date(978307200000)\/","guid":"ea762009b66c410b9bf5ce21ad519249","char":"c","keyValuePair":{},"stringList":["A","B","C"],"stringArray":["D","E","F"],"stringMap":{"A":"D","B":"E","C":"F"},"intStringMap":{"1":"A","2":"B","3":"C"},"subType":{"id":1,"name":"name"}}';
var jsonAllCollectionTypes = '{"intArray":[1,2,3],"intList":[4,5,6],"stringArray":["A","B","C"],"stringList":["D","E","F"],"pocoArray":[{"name":"pocoArray"}],"pocoList":[{"name":"pocoList"}],"pocoLookup":{"A":[{"name":"B"},{"name":"C"}]},"pocoLookupMap":{"A":[{"B":{"name":"C"}},{"D":{"name":"E"}}]}}';

void main() {

  test('Does serialize AllTypes', () {
    var dto = createAllTypes();
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = new AllTypes.fromJson(jsonObj);
    assertAllTypes(fromJson);
  });

  test('Does deserialize AllTypes', () {
    Map jsonObj = jsonDecode(jsonAllTypes);
    var dto = new AllTypes.fromJson(jsonObj);
    assertAllTypes(dto);
  });

  test('Does serialize AllCollectionTypes', () {
    var dto = createAllCollectionTypes();
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = new AllCollectionTypes.fromJson(jsonObj);
    assertAllCollectionTypes(fromJson);
  });

  test("Does serialize HelloAllTypes", (){
    var dto = new HelloAllTypes(
      name: "HelloAllTypes", 
      allTypes: createAllTypes(),
      allCollectionTypes: createAllCollectionTypes());
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = new HelloAllTypes.fromJson(jsonObj);
    expect(fromJson.name, equals("HelloAllTypes"));
    assertAllTypes(fromJson.allTypes);
    assertAllCollectionTypes(fromJson.allCollectionTypes);
  });

  test('Does serialize inheritance', () {
    var dto = new HelloWithInheritance(name: 'foo')
      ..id = 1;
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = new HelloWithInheritance.fromJson(jsonObj);
    expect(fromJson.name, equals("foo"));
    expect(fromJson.id, equals(1));
  });

}