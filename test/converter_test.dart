import 'package:test/test.dart';
import '../lib/servicestack.dart';

main() {
  test('Can parse ISO 8601 DateTime', () {
    var converter = new DateTimeConverter();

    var dateTime = converter.fromJson("2018-04-09T19:43:34.7405970", null);

    print(dateTime);
  });
}
