library client;

import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

part 'interfaces.dart';
part 'utils.dart';
part 'json_converters.dart';
part 'converters/duration_converter.dart';
part 'json_service_client.dart';

/* Missing classes */

class KeyValuePair<K, V> {
  KeyValuePair({this.key, this.value}) {}

  final K key;
  V value;
}

