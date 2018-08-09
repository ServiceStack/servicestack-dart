import 'package:servicestack/client.dart';
import 'test.dtos.dart';

main() async {
  var client = new JsonServiceClient("http://test.servicestack.net");

  var request = new Hello(name: "World");
  HelloResponse response = await client.get(request);
  
  print("Result: ${response.result}");
}
