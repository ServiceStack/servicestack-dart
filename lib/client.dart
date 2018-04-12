library client;

import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

part 'interfaces.dart';
part 'utils.dart';
part 'JsonConverters.dart';
part 'converters/DurationConverter.dart';
part 'JsonServiceClient.dart';

/* Missing classes */

class KeyValuePair<K, V> {
  KeyValuePair({this.key, this.value}) {}

  final K key;
  V value;
}

