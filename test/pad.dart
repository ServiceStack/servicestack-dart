import '../lib/client.dart';

JsonServiceClient createTestClient() => 
  new JsonServiceClient("http://test.servicestack.net")
    ..exceptionFilter = (res,e) {
      if (e is WebServiceException) {
        // print("ERROR: " + json.encode(e.responseStatus));
      }
    };

List<T> createList<T>(){ return new List<T>(); }

main() async {
  List<String> strList = createList<String>();
  List<String> strList2 = new List<String>();

  print(strList.runtimeType.toString());
  print(strList2.runtimeType.toString());
}

