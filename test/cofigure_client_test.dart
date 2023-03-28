import 'package:test/test.dart';
import '../lib/web_client.dart' if (dart.library.io) '../lib/client.dart';

void main() {
  test('Can configure client with kDebugMode', () async {
    var kDebugMode = true;
    var client = kDebugMode
        ? ClientFactory.createWith(ClientOptions(
            baseUrl: 'https://dev.servicestack.com:5001', ignoreCert: true))
        : ClientFactory.create('https://techstacks.io');
    expect(client, isNotNull);
  });

  test('Can configure client', () async {
    var options = ClientOptions(
        baseUrl: 'https://dev.servicestack.com:5001', ignoreCert: true);
    var client = ClientFactory.createWith(options);
    expect(client, isNotNull);
    var hostMap = toHostsMap(options.ignoreCertificatesFor);
    expect(hostMap.length, 1);
    expect(hostMap.containsKey('dev.servicestack.com'), true);
    expect(hostMap['dev.servicestack.com'], 5001);
  });

  test('Can populate ClientOptions', () async {
    var options = ClientOptions()
      ..ignoreCertificatesFor = [
        'dev.servicestack.com:5001',
        'local.servicestack.com'
      ];
    expect(options.baseUrl, "/");
    var hostMap = toHostsMap(options.ignoreCertificatesFor);
    expect(hostMap.containsKey('dev.servicestack.com'), true);
    expect(hostMap['dev.servicestack.com'], 5001);
    expect(hostMap.containsKey('local.servicestack.com'), true);
    expect(hostMap['local.servicestack.com'], null);
    expect(hostMap.containsKey('notexists.servicestack.com'), false);
    expect(hostMap['notexists.servicestack.com'], null);
  });

  test('Can populate ClientOptions with urls', () async {
    var options =
        ClientOptions(baseUrl: 'https://baseUrl.com', ignoreCert: true)
          ..ignoreCertificatesFor.addAll([
            'https://dev.servicestack.com:5001',
            'http://local.servicestack.com'
          ]);
    expect(options.baseUrl, 'https://baseUrl.com');
    expect(options.ignoreCertificatesFor.length, 3);
    var hostMap = toHostsMap(options.ignoreCertificatesFor);
    expect(hostMap.containsKey('baseUrl.com'), true);
    expect(hostMap['baseUrl.com'], null);
    expect(hostMap.containsKey('dev.servicestack.com'), true);
    expect(hostMap['dev.servicestack.com'], 5001);
    expect(hostMap.containsKey('local.servicestack.com'), true);
    expect(hostMap['local.servicestack.com'], null);
    expect(hostMap.containsKey('notexists.servicestack.com'), false);
    expect(hostMap['notexists.servicestack.com'], null);
  });
}
