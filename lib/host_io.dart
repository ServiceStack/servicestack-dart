import 'dart:convert';
import 'dart:io';

import './host_base.dart';

HostBase createHost() => new IOHost();

class IOHost extends HostBase {

  @override
  void vars(Map<String, dynamic> obj) {
    var inspectVarsPath = Platform.environment['INSPECT_VARS'];
    if (inspectVarsPath == null || inspectVarsPath.isEmpty || obj == null) {
      return;
    }

    var json = jsonEncode(obj);
    var varsPath = inspectVarsPath.replaceAll('\\', '/');
    if (varsPath.contains('/')) {
      var dir = dirname(varsPath);
      if (!Directory(dir).existsSync()) {
        Directory(dir).createSync();
      }
    }
    File(varsPath).writeAsStringSync(json);
  }

  String dirname(String path) {
    if (path.length == 0)
      return '.';
    var hasRoot = path[0] == '/';
    var end = -1;
    var matchedSlash = true;
    for (var i = path.length - 1; i >= 1; --i) {
      if (path[i] == '/') {
        if (!matchedSlash) {
          end = i;
          break;
        }
      } else {
        // We saw the first non-path separator
        matchedSlash = false;
      }
    }

    if (end == -1)
      return hasRoot ? '/' : '.';
    if (hasRoot && end == 1)
      return '//';
    return path.substring(0,end);
  }
}