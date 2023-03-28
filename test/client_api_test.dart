import 'package:test/test.dart';
import 'dart:convert';
import 'dart:typed_data';

import '../lib/client.dart';
import 'utils.dart';

import 'dtos/test.dtos.dart';

void main() {
  test('API Can GET Hello', () async {
    var client = createApiTestClient();
    var request = Hello(name: "World");
    var api = await client.api(request);

    expect(api.succeeded, isTrue);
    expect(api.response!.result, equals("Hello, World!"));
  });

  test('API Can POST Hello', () async {
    var client = createApiTestClient();
    var request = Hello(name: "World");
    var api = await client.api(request, method: "POST");

    expect(api.succeeded, isTrue);
    expect(api.response!.result, equals("Hello, World!"));
  });

  test('API Can SEND umlauts', () async {
    var client = createApiTestClient();
    var request = Hello(name: "üöäß");
    var api = await client.api(request, method: "POST");

    expect(api.succeeded, isTrue);
    expect(api.response!.result, equals("Hello, üöäß!"));
  });

  test('API Does fire Request and Response Filters', () async {
    var client = createApiTestClient();
    var events = <String>[];

    JsonServiceClient.globalRequestFilter =
        (req) => events.add("globalRequestFilter");
    JsonServiceClient.globalResponseFilter =
        (req) => events.add("globalResponseFilter");

    client.requestFilter = (req) => events.add("requestFilter");
    client.responseFilter = (req) => events.add("responseFilter");

    var request = Hello(name: "World");
    var api = await client.api(request);

    expect(api.response!.result, equals("Hello, World!"));

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

  test('API Can POST HelloAllTypes', () async {
    var client = createApiTestClient();
    var request = createHelloAllTypes();
    var api = await client.api(request);
    assertHelloAllTypesResponse(api.response!);
  });

  test('API Can PUT HelloAllTypes', () async {
    var client = createApiTestClient();
    var request = createHelloAllTypes();
    var api = await client.api(request, method: "PUT");
    assertHelloAllTypesResponse(api.response!);
  });

  test('API Does handle 404 Error', () async {
    var client = createApiTestClient();
    var request = ThrowType(type: "NotFound", message: "not here");
    var api = await client.api(request);

    expect(api.succeeded, isFalse);
    expect(api.failed, isTrue);

    var status = api.error!;
    expect(status.errorCode, equals("NotFound"));
    expect(status.message, equals("not here"));
  });

  test('API Does handle ValidationException', () async {
    var client = createApiTestClient();
    var request = ThrowValidation(email: "invalidemail");
    var api = await client.api(request);

    expect(api.succeeded, isFalse);
    expect(api.failed, isTrue);

    var status = api.error!;
    var errors = status.errors!;

    expect(errors.length, equals(3));
    expect(errors[0].errorCode, equals(status.errorCode));
    expect(errors[0].message, equals(status.message));

    expect(errors[0].errorCode, equals("InclusiveBetween"));
    expect(errors[0].message,
        equals("'Age' must be between 1 and 120. You entered 0."));
    expect(errors[0].fieldName, equals("Age"));

    expect(errors[1].errorCode, equals("NotEmpty"));
    expect(errors[1].message, equals("'Required' must not be empty."));
    expect(errors[1].fieldName, equals("Required"));

    expect(errors[2].errorCode, equals("Email"));
    expect(errors[2].message, equals("'Email' is not a valid email address."));
    expect(errors[2].fieldName, equals("Email"));
  });

  test('API Can POST valid ThrowValidation request', () async {
    var client = createApiTestClient();
    var request =
        ThrowValidation(age: 21, Required: "foo", email: "my@gmail.com");
    var api = await client.api(request);

    expect(api.response!.age, equals(request.age));
    expect(api.response!.Required, equals(request.Required));
    expect(api.response!.email, equals(request.email));
  });

  test('API Does handle auth failure', () async {
    var client = createApiTestClient();
    var request = RequiresAdmin();
    var api = await client.api(request);
    expect(api.error!.errorCode, equals('401'));
  });

  test('API Can send ReturnVoid', () async {
    var sentMethods = <String>[];
    var client = createApiTestClient();
    client.requestFilter = (req) => sentMethods.add(req.method);

    var request = SendReturnVoid(id: 1);

    await client.api(request);
    expect(sentMethods.last, equals("POST"));
    request.id = 2;
    await client.api(request, method: "GET");
    expect(sentMethods.last, equals("GET"));
    request.id = 3;
    await client.api(request, method: "POST");
    expect(sentMethods.last, equals("POST"));
    request.id = 4;
    await client.api(request, method: "PUT");
    expect(sentMethods.last, equals("PUT"));
    request.id = 5;
    await client.api(request, method: "DELETE");
    expect(sentMethods.last, equals("DELETE"));
  });

  test('API Can get response as Raw String', () async {
    var client = createApiTestClient();
    var request = HelloString(name: "World");
    var api = await client.api(request);
    expect(api.response, equals("World"));
  });

  test('API Should return raw text', () async {
    var client = createApiTestClient();
    var request = ReturnString(data: "0x10");
    var api = await client.api(request);
    expect(api.response, equals("0x10"));
  });

  test('API Can deserialize nested list', () async {
    var client = createApiTestClient();
    var api = await client.api(GetItems());
    expect(api.response!.results!.length, equals(2));

    expect(api.response!.runtimeType.toString(),
        equals(GetItems().getResponseTypeName()));
    expect(api.response!.results!.first.runtimeType.toString(), equals("Item"));
    var allNames = api.response!.results!.map((x) => x.name);
    expect(allNames, equals(["bar item 1", "bar item 2"]));
  });

  test('API Can deserialize naked list', () async {
    var client = createApiTestClient();
    var api = await client.api(GetNakedItems());
    expect(api.response!.length, equals(2));

    expect(api.response!.runtimeType.toString(),
        equals(GetNakedItems().getResponseTypeName()));
    expect(api.response!.first.runtimeType.toString(), equals("Item"));
    var allNames = api.response!.map((x) => x.name);
    expect(allNames, equals(["item 1", "item 2"]));
  });

  test('API Can deserialize custom generic response type', () async {
    var client = createApiTestClient();
    var api = await client.api(AltQueryItems());
    expect(api.response!.results!.length, equals(2));

    expect(api.response!.runtimeType.toString(),
        equals(AltQueryItems().getResponseTypeName()));
    expect(api.response!.results!.first.runtimeType.toString(), equals("Item"));
    var allNames = api.response!.results!.map((x) => x.name);
    expect(allNames, equals(["item 1", "item 2"]));
  });

  test('API Can POST to EchoTypes', () async {
    var client = createApiTestClient();

    var request = EchoTypes(Int: 1, string: "foo");

    var api = await client.api(request);

    expect(api.response!.Int, equals(1));
    expect(api.response!.string, equals("foo"));
  });

  test('API Can GET IReturnVoid requests', () async {
    var client = createApiTestClient();

    var request = HelloReturnVoid(id: 1);

    await client.api(request, method: "GET");
  });

  test('API Can POST IReturnVoid requests', () async {
    var client = createApiTestClient();

    var request = HelloReturnVoid(id: 1);

    await client.api(request);
  });

  test('API Can handle Validation Errors with Camel Casing', () async {
    var client = createApiTestClient();

    client.urlFilter = (url) => expect(
        url, endsWith("ThrowValidation?jsconfig=EmitCamelCaseNames%3Atrue"));

    var api = await client
        .api(ThrowValidation(), args: {"jsconfig": "EmitCamelCaseNames:true"});

    var status = api.error!;
    expect(status.errorCode, equals("InclusiveBetween"));
    expect(status.message,
        equals("'Age' must be between 1 and 120. You entered 0."));
    expect(status.errors![1].errorCode, equals("NotEmpty"));
    expect(status.errors![1].fieldName, equals("Required"));
    expect(status.errors![1].message, equals("'Required' must not be empty."));
  });

  test('API Can handle Validation Errors with Pascal Casing', () async {
    var client = createApiTestClient();

    client.urlFilter = (url) => expect(
        url, endsWith("ThrowValidation?jsconfig=EmitCamelCaseNames%3Afalse"));

    var api = await client
        .api(ThrowValidation(), args: {"jsconfig": "EmitCamelCaseNames:false"});

    var status = api.error!;
    expect(status.errorCode, equals("InclusiveBetween"));
    expect(status.message,
        equals("'Age' must be between 1 and 120. You entered 0."));
    expect(status.errors![1].errorCode, equals("NotEmpty"));
    expect(status.errors![1].fieldName, equals("Required"));
    expect(status.errors![1].message, equals("'Required' must not be empty."));
  });

  test('API Can POST EchoComplexTypes', () async {
    var client = createApiTestClient();

    var request = createEchoComplexTypes();

    var api = await client.api(request);

    assertEchoComplexTypes(api.response!);
  });

  test('API Can GET EchoComplexTypes', () async {
    var client = createApiTestClient();

    var request = createEchoComplexTypes();

    var api = await client.api(request, method: "GET");

    assertEchoComplexTypes(api.response!);
  });

  test('API Can handle connection error', () async {
    late WebServiceException handledEx;
    var client = JsonServiceClient("http://unknown-zzz.net")
      ..exceptionFilter = (res, e) {
        if (e is WebServiceException) {
          handledEx = e;
        }
      }
      ..connectionTimeout = Duration(seconds: 1);

    var api = await client.api(EchoTypes(Int: 1, string: "foo"));
    var status = api.error!;
    expect(status.errorCode, '500');
    expect(status.message, startsWith("SocketException: "));
  });

  test('API Can handle naked List', () async {
    var client = createApiTestClient();

    var request = HelloList()..names = ['A', 'B', 'C'];

    var api = await client.api(request, method: "GET");

    expect(api.response!.length, equals(3));
  });

  test('API Can serialize custom ResponseStatus', () async {
    var client = createApiTestClient();

    var request = ReturnCustom400(message: "Custom");

    var api = await client.api(request);

    var status = api.response!.responseStatus!;
    print(status.toJson());
    expect(status.message, equals("Custom"));
  });
}
