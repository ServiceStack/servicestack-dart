import 'package:servicestack/client.dart';
import 'test.dtos.dart';

Future<void> main() async {
  var client = JsonServiceClient("https://test.servicestack.net");

  var request = Hello(name: "World");
  HelloResponse response = await client.get(request);

  print("Result: ${response.result}");
}
