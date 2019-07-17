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

  test('Can SEND umlauts', () async {
    var client = createTestClient();
    var request = new Hello(name: "üöäß");
    HelloResponse response = await client.post(request);

    expect(response.result, equals("Hello, üöäß!"));
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
    
    var jsonObj = await client.postToUrl("/hello", request);
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
    
    Map jsonObj = await client.postToUrl("/hello", json.encode(request));
    var response = new HelloResponse.fromJson(jsonObj);
    
    expect(response.result, equals("Hello, World!"));
  });
  
  test('Does resolve IVerbs from request DTO interface marker', () {
    expect(resolveHttpMethod(new SendGet()), equals("GET"));
    expect(resolveHttpMethod(new SendPost()), equals("POST"));
    expect(resolveHttpMethod(new SendPut()), equals("PUT"));
  });

  test('Can POST HelloAllTypes', () async {
    var client = createTestClient();
    var request = createHelloAllTypes();
    var response = await client.post(request);
    assertHelloAllTypesResponse(response);
  });

  test('Can PUT HelloAllTypes', () async {
    var client = createTestClient();
    var request = createHelloAllTypes();
    var response = await client.put(request);
    assertHelloAllTypesResponse(response);
  });

  test('Does handle 404 Error', () async {
    var client = createTestClient();
    var request = new ThrowType(type: "NotFound", message: "not here");
    try {
      await client.put(request);
      fail("should throw");
    } on WebServiceException catch(ex) {
      var status = ex.responseStatus;
      expect(status.errorCode, equals("NotFound"));
      expect(status.message, equals("not here"));
      expect(status.stackTrace, isNotNull);
    }
  });
  
  test('Does handle ValidationException', () async {
    var client = createTestClient();
    var request = new ThrowValidation(email: "invalidemail");
    try {
      await client.post(request);
      fail("should throw");
    } on WebServiceException catch(ex) {
      var status = ex.responseStatus;

      expect(status.errors.length, equals(3));
      expect(status.errors[0].errorCode, equals(status.errorCode));
      expect(status.errors[0].message, equals(status.message));

      expect(status.errors[0].errorCode, equals("InclusiveBetween"));
      expect(status.errors[0].message, equals("'Age' must be between 1 and 120. You entered 0."));
      expect(status.errors[0].fieldName, equals("Age"));

      expect(status.errors[1].errorCode, equals("NotEmpty"));
      expect(status.errors[1].message, equals("'Required' must not be empty."));
      expect(status.errors[1].fieldName, equals("Required"));

      expect(status.errors[2].errorCode, equals("Email"));
      expect(status.errors[2].message, equals("'Email' is not a valid email address."));
      expect(status.errors[2].fieldName, equals("Email"));
    }
  });
  
  test('Can POST valid ThrowValidation request', () async {
    var client = createTestClient();
    var request = new ThrowValidation(age: 21, required: "foo", email: "my@gmail.com");    
    var response = await client.put(request);
    expect(response.age, equals(request.age));
    expect(response.required, equals(request.required));
    expect(response.email, equals(request.email));
  });

  test('Does handle auth failure', () async {
    var client = createTestClient();
    var request = new RequiresAdmin();
    try {
      await client.post(request);
      fail("should throw");
    } on WebServiceException catch(ex) {
      expect(ex.statusCode, equals(401));
    }
  });

  test('Can send ReturnVoid', () async {
    var sentMethods = new List<String>();
    var client = createTestClient();
    client.requestFilter = (req) => sentMethods.add(req.method);

    var request = new SendReturnVoid(id: 1);

    await client.send(request);
    expect(sentMethods.last, equals("POST"));
    request.id = 2;
    await client.get(request);
    expect(sentMethods.last, equals("GET"));
    request.id = 3;
    await client.post(request);
    expect(sentMethods.last, equals("POST"));
    request.id = 4;
    await client.put(request);
    expect(sentMethods.last, equals("PUT"));
    request.id = 5;
    await client.delete(request);
    expect(sentMethods.last, equals("DELETE"));    
  });

  test('Can get response as Raw String', () async {
    var client = createTestClient();
    var request = new HelloString(name: "World");
    var response = await client.get(request);
    expect(response, equals("World"));
  });

  test('Can get response as Raw Bytes', () async {
    var client = createTestClient();
    Uint8List response = await client.getAs("/json/reply/HelloString?Name=World", responseAs: TypeAs.bytes);
    expect(utf8.decode(response), equals("World"));
  });

  test('Should return raw text', () async {
    var client = createTestClient();
    var request = new ReturnString(data: "0x10");
    var str = await client.get(request);
    expect(str, equals("0x10"));
  });

  test('Can send raw JSON as object', () async {
    var client = createTestClient();

    client.responseFilter = (res) => 
      expect(res.headers["X-Args"], equals(['1,name']));

    var body = { "foo": "bar" };

    var request = new SendJson(id: 1, name: "name");
    
    var jsonObj = await client.postToUrl("/sendjson", body, args:toMap(request));

    expect(jsonObj["foo"], equals("bar"));
  });

  test('Can send raw JSON as string', () async {
    var client = createTestClient();

    client.responseFilter = (res) => 
      expect(res.headers["X-Args"], equals(['1,name']));

    var body = { "foo": "bar" };

    var request = new SendJson(id: 1, name: "name");
    
    var jsonStr = await client.post(request, body:json.encode(body));
    var jsonObj = json.decode(jsonStr);

    expect(jsonObj["foo"], equals("bar"));
  });

  test('Can send raw string', () async {
    var client = createTestClient();

    client.responseFilter = (res) => 
      expect(res.headers["X-Args"], equals(['1,name']));

    var body = "foo";

    var request = new SendText(id: 1, name: "name", contentType: "text/plain");
    
    var str = await client.post(request, body:body);

    expect(str, equals("foo"));
  });

  test('Can sendAll batch request', () async {
    var client = createTestClient();

    client.responseFilter = (res) => 
      expect(res.headers["X-AutoBatch-Completed"], equals(['3']));

    var requests = ["foo","bar","baz"].map((name) => new Hello(name: name));

    var responses = await client.sendAll(requests);

    expect(responses.map((x) => x.result), equals(['Hello, foo!', 'Hello, bar!', 'Hello, baz!']));
    
  });

  test('Can sendAllOneWay IReturn<T> batch request', () async {
    var client = createTestClient();
    client.urlFilter = (url) => expect(url, endsWith("/json/oneway/Hello%5B%5D"));

    var requests = ["foo","bar","baz"].map((name) => new Hello(name: name));

    await client.sendAllOneWay(requests);
  });

  test('Can sendAllOneWay IReturnVoid batch request', () async {
    var client = createTestClient();
    client.urlFilter = (url) => expect(url, endsWith("/json/oneway/HelloReturnVoid%5B%5D"));

    var requests = [1,2,3].map((id) => new HelloReturnVoid(id:id));

    await client.sendAllOneWay(requests);
  });

  test('Can POST to EchoTypes', () async {
    var client = createTestClient();

    var request = new EchoTypes(Int: 1, string: "foo");

    var response = await client.post(request);

    expect(response.Int, equals(1));
    expect(response.string, equals("foo"));
  });

  test('Can GET IReturnVoid requests', () async {
    var client = createTestClient();

    var request = new HelloReturnVoid(id: 1);

    await client.get(request);
  });

  test('Can POST IReturnVoid requests', () async {
    var client = createTestClient();

    var request = new HelloReturnVoid(id: 1);

    await client.post(request);
  });

  test('Can handle Validation Errors with Camel Casing', () async {
    var client = createTestClient();

    client.urlFilter = (url) => expect(url, endsWith("ThrowValidation?jsconfig=EmitCamelCaseNames%3Atrue"));

    try {
      await client.post(new ThrowValidation(), args: { "jsconfig": "EmitCamelCaseNames:true" });
    } on WebServiceException catch(e) {
      expect(e.responseStatus.errorCode, equals("InclusiveBetween"));
      expect(e.responseStatus.message, equals("'Age' must be between 1 and 120. You entered 0."));
      expect(e.responseStatus.errors[1].errorCode, equals("NotEmpty"));
      expect(e.responseStatus.errors[1].fieldName, equals("Required"));
      expect(e.responseStatus.errors[1].message, equals("'Required' must not be empty."));
    }
  });

  test('Can handle Validation Errors with Pascal Casing', () async {
    var client = createTestClient();

    client.urlFilter = (url) => expect(url, endsWith("ThrowValidation?jsconfig=EmitCamelCaseNames%3Afalse"));

    try {
      await client.post(new ThrowValidation(), args: { "jsconfig": "EmitCamelCaseNames:false" });
    } on WebServiceException catch(e) {
      expect(e.responseStatus.errorCode, equals("InclusiveBetween"));
      expect(e.responseStatus.message, equals("'Age' must be between 1 and 120. You entered 0."));
      expect(e.responseStatus.errors[1].errorCode, equals("NotEmpty"));
      expect(e.responseStatus.errors[1].fieldName, equals("Required"));
      expect(e.responseStatus.errors[1].message, equals("'Required' must not be empty."));
    }
  });

  test('Can GET using only path info', () async {
    var client = createTestClient();

    var jsonObj = await client.getUrl("/hello/World");
    var response = new HelloResponse.fromJson(jsonObj);

    expect(response.result, equals("Hello, World!"));
  });

  test('Can GET using absolute url', () async {
    var client = createTestClient();

    var jsonObj = await client.getUrl("http://test.servicestack.net/hello/World");
    var response = new HelloResponse.fromJson(jsonObj);

    expect(response.result, equals("Hello, World!"));
  });

  test('Can GET using route and queryString', () async {
    var client = createTestClient();

    var jsonObj = await client.getUrl("/hello", args: {"name": "World"});
    var response = new HelloResponse.fromJson(jsonObj);

    expect(response.result, equals("Hello, World!"));
  });

  test('Can GET EchoTypes using route', () async {
    var client = createTestClient();

    var request = new EchoTypes(Int: 1, string: "foo");

    var jsonObj = await client.getUrl("/echo/types", args: toMap(request));
    var response = new EchoTypes.fromJson(jsonObj);

    expect(response.Int, equals(1));
    expect(response.string, equals("foo"));
  });

  test('Can POST EchoComplexTypes', () async {
    var client = createTestClient();

    var request = createEchoComplexTypes();

    var response = await client.post(request);

    assertEchoComplexTypes(response);
  });

  test('Can GET EchoComplexTypes', () async {
    var client = createTestClient();

    var request = createEchoComplexTypes();

    var response = await client.get(request);

    assertEchoComplexTypes(response);
  });

  test('Can handle connection error', () async {
    WebServiceException handledEx;
    var client = new JsonServiceClient("http://unknown-zzz.net")
      ..exceptionFilter = (res,e) {
        if (e is WebServiceException) {
          handledEx = e;
        }
      }
      ..connectionTimeout = Duration(seconds: 1);

      try {
        var res = await client.get(new EchoTypes(Int: 1, string: "foo"));
        fail("should throw");
      } on WebServiceException catch(e) {
        expect(handledEx.statusCode, 500);
        expect(handledEx.statusDescription, startsWith("SocketException: "));
      }

  });

}
