import 'package:test/test.dart';
import 'dart:convert';

import '../../lib/client.dart';

import 'dartrefsandbox.dtos.dart';

void main() {
  //https://github.com/tobiaszuercher/dart-ref-repo
//  test('Can GetFoos', () async {
//    var client = JsonServiceClient("http://localhost:5000");
//    var response = await client.get(GetFoos());
//    expect(response.results.length, equals(1));
//  });

  test('Can deserialize naked list', () async {
    var jsonItems = '[{"id":"A"},{"id":"B"},{"id":"C"}]';
    var requestDto = GetItemsRequest();
    var responseAs = requestDto.createResponse();
    print(responseAs.runtimeType.toString());
    var jsonObj = json.decode(jsonItems);
    var dto = JsonConverters.fromJson(
            jsonObj, responseAs.runtimeType.toString(), requestDto.context!)
        as List<Item>;
    expect(dto.length, equals(3));

    jsonObj = json.decode("[1,2,3]");
    var intList =
        JsonConverters.fromJson(jsonObj, "List<int>", requestDto.context!)
            as List<int>;
    expect(intList.length, equals(3));
  });
}
