import 'package:test/test.dart';

import 'package:servicestack/client.dart';
import 'utils.dart';

import 'dtos/test.dtos.dart';

void main() {
  test('AuthRequired returns 401', () async {
    var client = createTestClient();
    try {
      await client.get(TestAuth());
      fail("should throw");
    } on WebServiceException catch (e) {
      expect(e.statusCode, equals(401));
      expect(e.statusDescription, equals("Unauthorized"));
    }
  });

  test('Does send BasicAuthHeaders', () async {
    var client = createTestClient();
    client.setCredentials("test", "test");

    var response = await client.get(TestAuth());

    expect(response.userId, equals('1'));
    expect(response.userName, equals("test"));
    expect(response.displayName, equals("test DisplayName"));
    expect(response.sessionId, isNotNull);
  });

  test('Can authenticate with CredentialsAuth', () async {
    var client = createTestClient();

    var request = Authenticate(
        provider: "credentials", userName: "test", password: "test");

    var authResponse = await client.post(request);

    expect(authResponse.userId, equals('1'));
    expect(authResponse.userName, equals("test"));
    expect(authResponse.sessionId, isNotNull);

    var response = await client.get(TestAuth());

    expect(response.userId, equals('1'));
    expect(response.userName, equals("test"));
    expect(response.displayName, equals("test DisplayName"));
    expect(response.sessionId, isNotNull);
  });
}
