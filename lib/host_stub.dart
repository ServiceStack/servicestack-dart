import './host_base.dart';

HostBase createHost() => throw UnsupportedError(
    'Cannot create a host without dart:html or dart:io.');
