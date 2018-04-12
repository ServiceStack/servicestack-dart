import 'package:test/test.dart';
import 'dart:convert';
import 'dart:typed_data';

import '../lib/client.dart';
import 'utils.dart';

import 'dtos/test.dtos.dart';

void main() {
  test('Can GET Hello', () async {
    var client = createTestClient();
    var request = new Hello(name: "World");
    HelloResponse response = await client.get(request);

    expect(response.result, equals("Hello, World!"));
  });

  test('Can POST Hello', () async {
    var client = createTestClient();
    var request = new Hello(name: "World");
    HelloResponse response = await client.post(request);

    expect(response.result, equals("Hello, World!"));
  });

  test('Does fire Request and Response Filters', () async {
    var client = createTestClient();
    var events = new List<String>();

    JsonServiceClient.globalRequestFilter =
        (req) => events.add("globalRequestFilter");
    JsonServiceClient.globalResponseFilter =
        (req) => events.add("globalResponseFilter");

    client.requestFilter = (req) => events.add("requestFilter");
    client.responseFilter = (req) => events.add("responseFilter");

    var request = new Hello(name: "World");
    HelloResponse response = await client.get(request);

    expect(response.result, equals("Hello, World!"));

    expect(
        events,
        equals([
          "requestFilter",
          "globalRequestFilter",
          "responseFilter",
          "globalResponseFilter"
        ]));

    JsonServiceClient.globalRequestFilter = null;
    JsonServiceClient.globalResponseFilter = null;
  });

  test('Can GET Hello with CustomPath', () async {
    var client = createTestClient();
    
    var jsonObj = await client.getUrl("/hello/World");
    var response = new HelloResponse.fromJson(jsonObj);
    
    expect(response.result, equals("Hello, World!"));
  });
  
  test('Can GET Hello with CustomPath as raw types', () async {
    var client = createTestClient();
    
    String jsonStr = await client.getAs("/hello", args:{"name":"World"}, responseAs:TypeAs.string);
    expect(jsonStr, equals('{"result":"Hello, World!"}'));

    Uint8List jsonBytes = await client.getAs("/hello", args:{"name":"World"}, responseAs:TypeAs.bytes);
    jsonStr = utf8.decode(jsonBytes);
    expect(jsonStr, equals('{"result":"Hello, World!"}'));

    HelloResponse dto = await client.getAs("/hello", args:{"name":"World"}, responseAs:new HelloResponse());
    expect(dto.result, equals("Hello, World!"));
  });
  
  test('Can POST Hello with CustomPath', () async {
    var client = createTestClient();
    var request = new Hello(name: "World");
    
    var jsonObj = await client.postUrl("/hello", request);
    var response = new HelloResponse.fromJson(jsonObj);
    
    expect(response.result, equals("Hello, World!"));
  });
  
  test('Can POST Hello with CustomPath as raw types', () async {
    var client = createTestClient();
    var request = new Hello(name: "World");
    
    String jsonStr = await client.postAs("/hello", request, responseAs:TypeAs.string);
    expect(jsonStr, equals('{"result":"Hello, World!"}'));

    Uint8List jsonBytes = await client.postAs("/hello", request, responseAs:TypeAs.bytes);
    jsonStr = utf8.decode(jsonBytes);
    expect(jsonStr, equals('{"result":"Hello, World!"}'));

    HelloResponse dto = await client.postAs("/hello", request, responseAs:new HelloResponse());
    expect(dto.result, equals("Hello, World!"));
  });
  
  test('Can POST Hello with CustomPath json object', () async {
    var client = createTestClient();
    var request = new Hello(name: "World");
    
    Map jsonObj = await client.postUrl("/hello", json.encode(request));
    var response = new HelloResponse.fromJson(jsonObj);
    
    expect(response.result, equals("Hello, World!"));
  });
  
  test('Does resolve IVerbs from request DTO interface marker', () {
    expect(resolveHttpMethod(new SendGet()), equals("GET"));
    expect(resolveHttpMethod(new SendPost()), equals("POST"));
    expect(resolveHttpMethod(new SendPut()), equals("PUT"));
  });

}
