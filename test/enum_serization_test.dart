library client_test;

import 'package:test/test.dart';

import 'dtos/test.dtos.dart';

import 'dart:convert';

void main() {
  void assertHelloWithEnum(HelloWithEnum actual, HelloWithEnum expected) {
    expect(actual.enumProp, equals(expected.enumProp));
    expect(actual.enumWithValues, equals(expected.enumWithValues));
    expect(actual.nullableEnumProp, equals(expected.nullableEnumProp));
    expect(actual.enumFlags, equals(expected.enumFlags));
    expect(actual.enumStyle, equals(expected.enumStyle));
  }

  test('Does serialize HelloWithEnum Empty', () {
    var dto = HelloWithEnum();
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = HelloWithEnum.fromJson(jsonObj as Map<String, dynamic>);
    assertHelloWithEnum(fromJson, dto);
  });

  test('Does serialize HelloWithEnum EnumFlags', () {
    var dto = HelloWithEnum()..enumFlags = EnumFlags.Value1;

    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = HelloWithEnum.fromJson(jsonObj as Map<String, dynamic>);
    assertHelloWithEnum(fromJson, dto);
  });

  test('Does serialize HelloWithEnum All', () {
    var dto = HelloWithEnum()
      ..enumProp = EnumType.Value2
      ..enumWithValues = EnumWithValues.Value1
      ..enumFlags = EnumFlags.Value1
      ..enumStyle = EnumStyle.UPPER;

    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = HelloWithEnum.fromJson(jsonObj as Map<String, dynamic>);
    assertHelloWithEnum(fromJson, dto);
  });

  void assertHelloWithEnumList(
      HelloWithEnumList actual, HelloWithEnumList expected) {
    expect(actual.enumProp, equals(expected.enumProp));
    expect(actual.enumWithValues, equals(expected.enumWithValues));
    expect(actual.nullableEnumProp, equals(expected.nullableEnumProp));
    expect(actual.enumFlags, equals(expected.enumFlags));
    expect(actual.enumStyle, equals(expected.enumStyle));
  }

  test('Does serialize HelloWithEnumList Empty', () {
    var dto = HelloWithEnumList();
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = HelloWithEnumList.fromJson(jsonObj as Map<String, dynamic>);
    assertHelloWithEnumList(fromJson, dto);
  });

  test('Does serialize HelloWithEnumList All', () {
    var dto = HelloWithEnumList()
      ..enumProp = [EnumType.Value2]
      ..enumWithValues = [EnumWithValues.Value1]
      ..enumFlags = [EnumFlags.Value1]
      ..enumStyle = [EnumStyle.UPPER];

    var json = jsonEncode(dto);
    print("JSON: ${json}");
    Map jsonObj = jsonDecode(json);
    var fromJson = HelloWithEnumList.fromJson(jsonObj as Map<String, dynamic>);
    assertHelloWithEnumList(fromJson, dto);
  });

  void assertHelloWithEnumMap(
      HelloWithEnumMap actual, HelloWithEnumMap expected) {
    expect(actual.enumProp, equals(expected.enumProp));
    expect(actual.enumWithValues, equals(expected.enumWithValues));
    expect(actual.nullableEnumProp, equals(expected.nullableEnumProp));
    expect(actual.enumFlags, equals(expected.enumFlags));
    expect(actual.enumStyle, equals(expected.enumStyle));
  }

  test('Does serialize HelloWithEnumMap Empty', () {
    var dto = HelloWithEnumMap();
    var json = jsonEncode(dto);
    Map jsonObj = jsonDecode(json);
    var fromJson = HelloWithEnumMap.fromJson(jsonObj as Map<String, dynamic>);
    assertHelloWithEnumMap(fromJson, dto);
  });

  test('Does serialize HelloWithEnumMap All', () {
    var dto = HelloWithEnumMap()
      ..enumProp = {EnumType.Value2: EnumType.Value2}
      ..enumWithValues = {EnumWithValues.Value1: EnumWithValues.Value1}
      ..enumFlags = {EnumFlags.Value1: EnumFlags.Value1}
      ..enumStyle = {EnumStyle.UPPER: EnumStyle.UPPER};

    var json = jsonEncode(dto);
    print("JSON: ${json}");
    Map jsonObj = jsonDecode(json);
    var fromJson = HelloWithEnumMap.fromJson(jsonObj as Map<String, dynamic>);
    assertHelloWithEnumMap(fromJson, dto);
  });
}
