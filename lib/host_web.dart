import './host_base.dart';

HostBase createHost() => WebHost();

class WebHost extends HostBase {
  @override
  void vars(Map<String, dynamic> obj) {}
}
