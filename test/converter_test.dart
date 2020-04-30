import 'package:test/test.dart';
import '../lib/client.dart';

main() {
  test('Can parse ISO 8601 DateTime', () {
    var converter = new DateTimeConverter();

    DateTime dateTime = converter.fromJson("2018-04-09T19:43:34.7405970", null);

    expect(dateTime.toIso8601String(), "2018-04-09T19:43:34.740597");
  });

  test('Can parse ISO 8601 DateTime with Timezone', () {
    var converter = new DateTimeConverter();

    DateTime dateTime = converter.fromJson("2018-04-09T19:43:34.740590+01:00", null);

    expect("2018-04-09T19:43:34.740590+01:00", dateTime.toIso8601String());
  });

  test('Can parse ISO 8601 DateTime with UTC', () {
    var converter = new DateTimeConverter();

    DateTime dateTime = converter.fromJson("2018-04-09T19:43:34.7405901Z", null);

    expect("2018-04-09T19:43:34.7405901Z", dateTime.toIso8601String());
  });
}
