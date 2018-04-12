import 'package:test/test.dart';

import '../lib/client.dart';
import 'utils.dart';

import 'dtos/test.dtos.dart';

class NonExistingService implements IReturn<String> {
  NonExistingService();
  NonExistingService fromMap(Map<String, dynamic> map) => new NonExistingService.fromJson(map);
  NonExistingService.fromJson(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() => {};
  createResponse() { return ""; }
  String getTypeName() { return "NonExistingService"; }
}

void main() {

  test('Does process missing service correctly', () async {
    var client = createTestClient();
    try {
      await client.get(new NonExistingService());
      fail("should throw");
    } on WebServiceException catch(e) {
      expect(e.statusCode, equals(405));
    }
  });

  test('Can serialize dates correctly via get request', () async {
    var client = createTestClient();

    var request = new EchoTypes(dateTime: new DateTime.utc(2015,1,1));

    var response = await client.get(request);

    expect(response.dateTime, equals(request.dateTime));
  });

}