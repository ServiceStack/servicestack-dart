import 'package:servicestack/client.dart';

JsonServiceClient createTestClient() =>
    JsonServiceClient("https://test.servicestack.net")
      ..exceptionFilter = (res, e) {
        if (e is WebServiceException) {
          // print("ERROR: " + json.encode(e.responseStatus));
        }
      };

List<T> createList<T>() {
  return <T>[];
}

void main() async {
  List<String> strList = createList<String>();
  List<String> strList2 = <String>[];

  print(strList.runtimeType.toString());
  print(strList2.runtimeType.toString());
}
