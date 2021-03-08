import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;

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
      var dir = path.dirname(varsPath);
      if (!Directory(dir).existsSync()) {
        Directory(dir).createSync();
      }
    }
    File(varsPath).writeAsStringSync(json);
  }

}