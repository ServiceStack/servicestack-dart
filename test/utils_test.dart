library client_test;

import '../lib/client.dart';

import 'dart:convert';
import 'package:test/test.dart';

void main() {
  test('Does parse Generic Type args', (){
    var results = getGenericArgs("_InternalLinkedHashMap<String, List<Map<String, Poco>>>");
    expect(results.length, equals(2));
    expect(results[0], equals("String"));
    expect(results[1], equals("List<Map<String,Poco>>"));
  });
}

