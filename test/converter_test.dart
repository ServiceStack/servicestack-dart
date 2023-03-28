import 'package:test/test.dart';
import '../lib/client.dart';

main() {
  test('Can parse ISO 8601 DateTime', () {
    var converter = DateTimeConverter();

    DateTime dateTime =
        converter.fromJson("2018-04-09T19:43:34.7405970", TypeContext.Default);

    expect("2018-04-09T19:43:34.740597",
        dateTime.toIso8601String()); //only 6ms precision
  });

  test('Can parse ISO 8601 DateTime with Timezone', () {
    var converter = DateTimeConverter();

    DateTime dateTime = converter.fromJson(
        "2018-04-09T19:43:34.740590+01:00", TypeContext.Default);

    expect(dateTime.toIso8601String(),
        "2018-04-09T18:43:34.740590Z"); // DateTime doesn't support TZ's, converts to UTC
  });

  test('Can parse ISO 8601 DateTime with UTC', () {
    var converter = DateTimeConverter();

    DateTime dateTime =
        converter.fromJson("2018-04-09T19:43:34.7405901Z", TypeContext.Default);

    expect(dateTime.toIso8601String(),
        "2018-04-09T19:43:34.740590Z"); //only 6ms precision
  });

  test('Can parse XSD Duration', () {
    var duration = fromTimeSpan("PT1H");
    expect(duration, Duration(hours: 1));

    duration = fromTimeSpan("P1DT1H");
    expect(duration, Duration(days: 1, hours: 1));
  });

  test('Can format XSD Duration', () {
    var xsd = "P11DT2H3M4.123S";
    var duration = fromTimeSpan(xsd)!;
    expect(
        duration,
        Duration(
            days: 11, hours: 2, minutes: 3, seconds: 4, milliseconds: 123));
    var fmt = toTimeSpan(duration);
    expect(fmt, xsd);
  });
}
