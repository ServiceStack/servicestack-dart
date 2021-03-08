import './host_base.dart';
import './host_stub.dart'
  if (dart.library.html) './host_web.dart'
  if (dart.library.io) './host_io.dart';

class Host {
  static final HostBase instance = createHost();
  Host._internal();
}