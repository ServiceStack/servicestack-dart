import 'package:test/test.dart';

import '../lib/servicestack.dart';
import 'utils.dart';

import 'dtos/test.dtos.dart';

void main(){

  test('AuthRequired returns 401', () async {
    var client = createTestClient();
    try {
      await client.get(new TestAuth());
      fail("should throw");
    } on WebServiceException catch(e) {
      expect(e.statusCode, equals(401));
      expect(e.statusDescription, equals("Unauthorized"));
    }
  });

  test('Does send BasicAuthHeaders', () async {
    var client = createTestClient();
    client.setCredentials("test", "test");

    var response = await client.get(new TestAuth());
    
    expect(response.userId, equals('1'));
    expect(response.userName, equals("test"));
    expect(response.displayName, equals("test DisplayName"));
    expect(response.sessionId, isNotNull);
  });

  test('Can authenticate with CredentialsAuth', () async {
    var client = createTestClient();
    
    var request = new Authenticate(provider: "credentials", userName: "test", password: "test");
    
    var authResponse = await client.get(request);
    
    expect(authResponse.userId, equals('1'));
    expect(authResponse.userName, equals("test"));
    expect(authResponse.sessionId, isNotNull);

    var response = await client.get(new TestAuth());
   
    expect(response.userId, equals('1'));
    expect(response.userName, equals("test"));
    expect(response.displayName, equals("test DisplayName"));
    expect(response.sessionId, isNotNull);
  });
}