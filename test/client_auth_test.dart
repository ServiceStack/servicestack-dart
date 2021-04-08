import 'package:test/test.dart';

import '../lib/client.dart';
import 'utils.dart';

import 'dtos/test.dtos.dart';

CreateJwt createJwt([Map options]) {
  var to = CreateJwt.fromJson(options ?? Map<String, dynamic>());
  if (to.userAuthId == null) to.userAuthId = "1";
  if (to.displayName == null) to.displayName = "test jwt";
  if (to.email == null) to.email = "test@auth.com";
  return to;
}

void clearSession(JsonServiceClient client) async =>
    await client.post(Authenticate(provider: "logout"));

void main() {

  test('Can auth with JWT', () async {
    var client = createTestClient();
    var response = await client.post(createJwt());
    client.bearerToken = response.token;

    var testAuth = await client.get(TestAuth());
    expect(testAuth.userId, equals("1"));
    expect(testAuth.displayName, equals("test jwt"));
    expect(testAuth.sessionId, isNotNull);
  });

  test('Does fire onAuthenticationRequired callback on 401', () async {
    var client = createTestClient();
    var count = 0;
    client.onAuthenticationRequired = () async {
      count++;
    };

    try {
      await client.get(TestAuth());
      fail("should throw");
    } on WebServiceException catch (e) {
      var status = e.responseStatus;
      expect(status.errorCode, equals("401"));
      expect(status.message, equals("Unauthorized"));
      expect(count, equals(1));
    }
  });

  test('Can use onAuthenticationRequired to auth client', () async {
    var client = createTestClient();
    var count = 0;

    client.onAuthenticationRequired = () async {
      count++;
      client.userName = "test";
      client.password = "test";
    };

    await client.get(TestAuth());
    expect(count, equals(1));
  });

  test('Can use onAuthenticationRequired to fetch token', () async {
    var client = createTestClient();
    var count = 0;

    client.onAuthenticationRequired = () async {
      count++;
      var authClient = createTestClient();
      authClient.userName = "test";
      authClient.password = "test";
      var response = await authClient.get(Authenticate());
      client.bearerToken = response.bearerToken;
    };

    await client.get(TestAuth());
    expect(count, equals(1));
  });

  test(
      'Can use onAuthenticationRequired to fetch token after expired token',
      () async {
    var client = createTestClient();
    var count = 0;

    client.onAuthenticationRequired = () async {
      count++;
      var createFreshJwt = createJwt();
      var freshJwt = await client.post(createFreshJwt);
      client.bearerToken = freshJwt.token;
    };

    var createExpiredJwt = createJwt();
    createExpiredJwt.jwtExpiry = DateTime(2000, 1, 1);
    var expiredJwt = await client.post(createExpiredJwt);

    client.bearerToken = expiredJwt.token;
    await client.get(TestAuth());
    expect(count, equals(1));
  });

  test('Can use refreshToken to fetch token after expired token', () async {
    var client = createTestClient();

    client.userName = "test";
    client.password = "test";
    var authResponse = await client.post(Authenticate());

    client.refreshToken = authResponse.refreshToken;
    client.setCredentials(null, null);

    var createExpiredJwt = createJwt();
    createExpiredJwt.jwtExpiry = DateTime(2000, 1, 1);
    var expiredJwt = await client.post(createExpiredJwt);

    client.bearerToken = expiredJwt.token;
    await client.get(TestAuth());

    expect(client.bearerToken, isNot(equals(expiredJwt.token)));
  });

  test('Can reauthenticate after an auto refresh access token', () async {
    var client = createTestClient();
    var auth = Authenticate(
        provider: "credentials", userName: "test", password: "test");
    var authResponse = await client.post(auth);

    var refreshToken = authResponse.refreshToken;

    var createExpiredJwt = createJwt();
    createExpiredJwt.jwtExpiry = DateTime(2000, 1, 1);
    var expiredJwt = await client.post(createExpiredJwt);
    var bearerToken = expiredJwt.token;

    await clearSession(client);

    client = createTestClient();
    client.bearerToken = bearerToken;
    client.refreshToken = refreshToken;

    auth.password = "notvalid";
    try {
      await client.post(auth);
      fail("should throw");
    } on WebServiceException catch (e) {
      var status = e.responseStatus;
      expect(status.errorCode, equals("Unauthorized"));
      expect(status.message, equals("Invalid Username or Password"));
    }
  });

  test('Does fetch AccessToken using RefreshTokenCookies', () async {
    var client = createTestClient();
    await client.post(Authenticate(
        provider: "credentials", userName: "test", password: "test"));

    var initialAccessToken = client.getTokenCookie();
    var initialRefreshToken = client.getRefreshTokenCookie();
    expect(initialAccessToken, isNotNull);
    expect(initialRefreshToken, isNotNull);

    var request = Secured()..name="test";
    var response = await client.send(request);
    expect(response.result, equals(request.name));

    await client.post(InvalidateLastAccessToken());

    response = await client.send(request);
    expect(response.result, equals(request.name));

    var latestAccessToken = client.getTokenCookie();
    expect(latestAccessToken, isNot(equals(initialAccessToken)));
  });

  test('Invalid RefreshToken throws RefreshTokenException ErrorResponse',
      () async {
    var client = createTestClient();
    client.refreshToken = "Invalid.Refresh.Token";

    try {
      await client.get(TestAuth());
      fail("should throw");
    } on WebServiceException catch (e) {
      expect(e.type, equals(WebServiceExceptionType.RefreshTokenException));
      expect(e.responseStatus.errorCode, equals("ArgumentException"));
      expect(e.responseStatus.message, equals("Illegal base64url string!"));
    }
  });

  test('Expires RefreshToken throws RefreshTokenException', () async {
    var client = createTestClient();

    var createExpiredJwt = CreateRefreshJwt();
    createExpiredJwt.jwtExpiry = DateTime(2000, 1, 1);
    var expiredJwt = await client.post(createExpiredJwt);
    client.refreshToken = expiredJwt.token;

    try {
      await client.get(TestAuth());
      fail("should throw");
    } catch (e) {
      expect(e.type, equals(WebServiceExceptionType.RefreshTokenException));
      expect(e.responseStatus.errorCode, equals("TokenException"));
      expect(e.responseStatus.message, equals("Token has expired"));
    }
  });

  test("TODO Can authenticate with ServerEvents using JWT", () async {
      // TODO after ServerEventsClient is implemented
      // https://github.com/ServiceStack/servicestack-client/blob/master/tests/client.auth.spec.ts#L225    
  });

}
