library client_test;
import 'package:flutter_test/flutter_test.dart';

import '../lib/servicestack.dart';

void main() {
  test('Does parse Generic Type args', (){
    var results = getGenericArgs("_InternalLinkedHashMap<String, List<Map<String, Poco>>>");
    expect(results.length, equals(2));
    expect(results[0], equals("String"));
    expect(results[1], equals("List<Map<String,Poco>>"));
  });

  test('Can parse complex Uri', () {
    var url = r"http://test.servicestack.net/echo/complex.json?subType={id:1,name:foo}&subTypes=[{id:2,name:bar},{id:3,name:baz}]&subTypeMap={a:{id:4,name:qux}}&stringMap={a:b}&intStringMap=1:A";
    var uri = createUri(url);

    expect(uri.path, equals("/echo/complex.json"));

    var qs = uri.queryParameters;
    expect(qs['subType'], equals('{id:1,name:foo}'));
    expect(qs['subTypes'], equals('[{id:2,name:bar},{id:3,name:baz}]'));
    expect(qs['subTypeMap'], equals('{a:{id:4,name:qux}}'));
    expect(qs['stringMap'], equals('{a:b}'));
    expect(qs['intStringMap'], equals('1:A'));
  });
}

