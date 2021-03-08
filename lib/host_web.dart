import './host_base.dart';

HostBase createHost() => new WebHost();

class WebHost extends HostBase {

  @override
  void vars(Map<String, dynamic> obj) {
  }

}