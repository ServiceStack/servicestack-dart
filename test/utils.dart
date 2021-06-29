import 'package:test/test.dart';
import 'dart:convert';

import '../lib/client.dart';

import 'dtos/test.dtos.dart';

JsonServiceClient createTestClient() =>
    //JsonServiceClient("http://localhost:5000")
    JsonServiceClient("http://test.servicestack.net")
      ..exceptionFilter = (res, e) {
        if (e is WebServiceException) {
          // print("ERROR: " + json.encode(e.responseStatus));
        }
      };

JsonServiceClient createTechStacksClient() =>
    JsonServiceClient("https://techstacks.io")
      ..exceptionFilter = (res, e) {
        if (e is WebServiceException) {
          print("ERROR: " + json.encode(e.responseStatus));
        }
      };

HelloAllTypes createHelloAllTypes() => HelloAllTypes(
    name: "name",
    allTypes: createAllTypes(),
    allCollectionTypes: createAllCollectionTypes());

AllTypes createAllTypes() => AllTypes(
    id: 1,
    char: 'c',
    byte: 2,
    short: 3,
    Int: 4,
    long: 5,
    uShort: 6,
    uInt: 7,
    uLong: 8,
    float: 1.1,
    Double: 2.2,
    decimal: 3.0,
    string: "string",
    dateTime: DateTime.utc(2001, 1, 1),
    dateTimeOffset: DateTime.utc(2001, 1, 1),
    timeSpan: Duration(hours: 1),
    guid: "ea762009b66c410b9bf5ce21ad519249",
    stringList: ["A", "B", "C"],
    stringArray: ["D", "E", "F"],
    stringMap: {
      "A": "D",
      "B": "E",
      "C": "F",
    },
    intStringMap: {1: "A", 2: "B", 3: "C"},
    subType: SubType(id: 1, name: "name"));

void assertHelloAllTypesResponse(HelloAllTypesResponse dto) {
  expect(dto.result, equals("name"));
  assertAllTypes(dto.allTypes!);
  assertAllCollectionTypes(dto.allCollectionTypes!);
}

void assertAllTypes(AllTypes dto) {
  expect(dto.id, equals(1));
  expect(dto.byte, equals(2));
  expect(dto.short, equals(3));
  expect(dto.Int, equals(4));
  expect(dto.uShort, equals(6));
  expect(dto.uInt, equals(7));
  expect(dto.uLong, equals(8));
  expect(dto.float, equals(1.1));
  expect(dto.Double, equals(2.2));
  expect(dto.decimal, equals(3.0));
  expect(dto.string, equals("string"));
  expect(dto.dateTime, equals(DateTime.utc(2001, 1, 1)));
  expect(dto.dateTimeOffset, equals(DateTime.utc(2001, 1, 1)));
  expect(dto.timeSpan, equals(Duration(hours: 1)));
  expect(dto.guid, equals("ea762009b66c410b9bf5ce21ad519249"));
  expect(dto.stringList, equals(["A", "B", "C"]));
  expect(dto.stringArray, equals(["D", "E", "F"]));
  expect(
      dto.stringMap,
      equals({
        "A": "D",
        "B": "E",
        "C": "F",
      }));
  expect(dto.intStringMap, equals({1: "A", 2: "B", 3: "C"}));
  expect(dto.subType!.id, equals(1));
  expect(dto.subType!.name, equals("name"));
}

AllCollectionTypes createAllCollectionTypes() =>
    AllCollectionTypes(intArray: [
      1,
      2,
      3
    ], intList: [
      4,
      5,
      6
    ], stringArray: [
      "A",
      "B",
      "C"
    ], stringList: [
      "D",
      "E",
      "F"
    ], byteArray: fromByteArray("QUJD"), //base64(ABC)
        pocoArray: [
      createPoco("pocoArray")
    ], pocoList: [
      createPoco("pocoList")
    ], pocoLookup: {
      "A": [createPoco("B"), createPoco("C")]
    }, pocoLookupMap: {
      "A": [
        {"B": createPoco("C"), "D": createPoco("E")}
      ]
    });

void assertAllCollectionTypes(AllCollectionTypes dto) {
  expect(dto.intArray, equals([1, 2, 3]));
  expect(dto.intList, equals([4, 5, 6]));
  expect(dto.stringArray, equals(["A", "B", "C"]));
  expect(dto.stringList, equals(["D", "E", "F"]));
  expect(dto.byteArray, equals([65,66,67])); //ABC

  expect(dto.pocoArray!.length, equals(1));
  expect(dto.pocoArray![0].name, equals("pocoArray"));
  expect(dto.pocoList!.length, equals(1));
  expect(dto.pocoList![0].name, equals("pocoList"));

  expect(dto.pocoLookup!.length, equals(1));
  var pocoLookupValues = dto.pocoLookup!["A"]!;
  expect(pocoLookupValues.length, equals(2));
  expect(pocoLookupValues[0].name, equals("B"));
  expect(pocoLookupValues[1].name, equals("C"));

  expect(dto.pocoLookupMap!.length, equals(1));
  var pocoLookupMapValues = dto.pocoLookupMap!["A"]!;
  expect(pocoLookupMapValues.length, equals(1));
  var pocoLookupMapAList = pocoLookupMapValues[0];
  expect(pocoLookupMapAList.length, equals(2));
  expect(pocoLookupMapAList["B"]!.name, equals("C"));
  expect(pocoLookupMapAList["D"]!.name, equals("E"));
}

Poco createPoco(String name) => Poco(name: name);

EchoComplexTypes createEchoComplexTypes() =>
    EchoComplexTypes(subType: SubType(id: 1, name: "foo"), subTypes: [
      SubType(id: 2, name: "bar"),
      SubType(id: 3, name: "baz"),
    ], subTypeMap: {
      "a": SubType(id: 4, name: "qux")
    }, stringMap: {
      "a": "b"
    }, intStringMap: {
      1: "A"
    });

void assertEchoComplexTypes(EchoComplexTypes dto) {
  expect(dto.subType!.id, equals(1));
  expect(dto.subType!.name, equals("foo"));
  expect(dto.subTypes![0].id, equals(2));
  expect(dto.subTypes![0].name, equals("bar"));
  expect(dto.subTypes![1].id, equals(3));
  expect(dto.subTypes![1].name, equals("baz"));
  expect(dto.subTypeMap!['a']!.id, equals(4));
  expect(dto.subTypeMap!['a']!.name, equals('qux'));
  expect(dto.stringMap!['a'], equals('b'));
  expect(dto.intStringMap![1], equals('A'));
}
