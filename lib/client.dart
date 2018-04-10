library client;

part 'interfaces.dart';
part 'utils.dart';
part 'JsonConverters.dart';
part 'converters/TimeSpanConverter.dart';


/* Missing classes */

class KeyValuePair<K, V> {
  KeyValuePair({this.key, this.value}) {}

  final K key;
  V value;
}

