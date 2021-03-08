import 'dart:convert';
import './host.dart';

class Inspect {
  static void vars(Map<String, dynamic> obj) {
    Host.instance.vars(obj);
  }

  static T cast<T>(x) => x is T ? x : null;

  static String dump(dynamic obj) {
    if (cast<Iterable>(obj) != null) {
      obj = _asList(obj);
    }
    var encoder = JsonEncoder.withIndent('    ');
    var json = encoder.convert(obj);
    return json.replaceAll('"', '');
  }

  static void printDump(dynamic obj) => print(dump(obj));

  static String dumpTable(Iterable rows) {
    rows = _asList(rows);
    var mapRows = _asListMap(rows);
    var keys = _allKeys(mapRows);
    var colSizes = Map<String, int>();

    keys.forEach((k) {
      var max = k.length;
      mapRows.forEach((row) {
        var col = row[k];
        if (col != null) {
          var valSize = "${col}".length;
          if (valSize > max) {
            max = valSize;
          }
        }
      });
      colSizes[k] = max;
    });

    // sum + ' padding ' + |
    int rowWidth = colSizes.values.fold(0, (p, c) => p + c) +
        (colSizes.length * 2) +
        (colSizes.length + 1);
    var sb = <String>[];
    sb.add("+${'-' * (rowWidth - 2)}+");
    var head = '|';
    keys.forEach((k) {
      head += _alignCenter(k, colSizes[k]) + '|';
    });
    sb.add(head);
    sb.add("|${'-' * (rowWidth - 2)}|");

    mapRows.forEach((row) {
      var to = '|';
      keys.forEach((k) {
        to += '' + _alignAuto(row[k], colSizes[k]) + '|';
      });
      sb.add(to);
    });

    sb.add("+${'-' * (rowWidth - 2)}+");

    return sb.join('\n');
  }

  static void printDumpTable(Iterable rows) => print(dumpTable(rows));

  static List _asList(dynamic obj) {
    if (obj is Iterable && !(obj is List)) {
      return obj.toList();
    }
    return obj;
  }

  static List<Map<String, dynamic>> _asListMap(List rows) {
    return rows.map((e) => _asMap(e)).toList();
  }

  static Map<String, dynamic> _asMap(dynamic obj) {
    if (obj is Map<String, dynamic>) {
      return obj;
    }
    return obj.toJson();
  }

  static List<String> _allKeys(List<Map<String, dynamic>> rows) {
    var to = <String>[];
    rows.forEach((o) => o.keys.forEach((k) {
      if (!to.contains(k)) {
        to.add(k);
      }
    }));
    return to;
  }

  static String _alignLeft(String str, int len, [String pad = ' ']) {
    if (len < 0) return '';
    var alen = len + 1 - str.length;
    if (alen <= 0) return str;
    return pad + str + (pad * (len + 1 - str.length));
  }

  static String _alignCenter(String str, int len, [String pad = ' ']) {
    if (len < 0) return '';
    str ??= '';
    var nLen = str.length;
    var half = (len / 2 - nLen / 2).floor();
    var odds = ((nLen % 2) - (len % 2)).abs();
    len = str.length;

    return (pad * (half + 1)) + str + (pad * (half + 1 + odds));
  }

  static String _alignRight(String str, int len, [String pad = ' ']) {
    if (len < 0) return '';
    var alen = len + 1 - str.length;
    if (alen <= 0) return str;
    return pad * (len + 1 - str.length) + str + pad;
  }

  static String _alignAuto(dynamic obj, int len, [String pad = ' ']) {
    var str = '${obj}';

    if (str.length <= len) {
      if (obj is int || obj is double) {
        return _alignRight(str, len, pad);
      }
      return _alignLeft(str, len, pad);
    }
    return str;
  }
}