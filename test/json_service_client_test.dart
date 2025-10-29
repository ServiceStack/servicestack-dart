import 'package:test/test.dart';

import 'package:servicestack/client.dart';
import 'utils.dart';

import 'dtos/test.dtos.dart';

// ignore: constant_identifier_names
const TEST_URL = "https://test.servicestack.net";

class NonExistingService implements IReturn<String> {
  NonExistingService();
  NonExistingService fromMap(Map<String, dynamic> map) =>
      NonExistingService.fromJson(map);
  NonExistingService.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson() => {};
  @override
  createResponse() {
    return "";
  }

  @override
  String getTypeName() {
    return "NonExistingService";
  }
}

void main() {
  test('Does process missing service correctly', () async {
    var client = createTestClient();
    try {
      await client.get(NonExistingService());
      fail("should throw");
    } on WebServiceException catch (e) {
      expect(e.statusCode, equals(405));
    }
  });

  test('Can serialize dates correctly via get request', () async {
    var client = createTestClient();

    var request = EchoTypes(dateTime: DateTime.utc(2015, 1, 1));

    var response = await client.get(request);

    expect(response.dateTime, equals(request.dateTime));
  });

  test('Should generate default value', () {
    var request = HelloTypes();
    request.Bool = false;
    request.Int = 0;
    var requestUrl = appendQueryString(TEST_URL, toMap(request));
    expect(requestUrl, equals("$TEST_URL?bool=false&int=0"));
  });
}
