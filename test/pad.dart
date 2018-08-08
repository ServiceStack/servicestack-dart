import 'package:test/test.dart';

import '../lib/client.dart';

import 'dtos/test.dtos.dart';

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

    var client = createTestClient();

    client.urlFilter = (url) => expect(url, endsWith("ThrowValidation?jsconfig=EmitCamelCaseNames%3Afalse"));

    try {
      await client.post(new ThrowValidation(), args: { "jsconfig": "EmitCamelCaseNames:false" });
    } on WebServiceException catch(e) {
      expect(e.responseStatus.errorCode, equals("InclusiveBetween"));
      expect(e.responseStatus.message, equals("'Age' must be between 1 and 120. You entered 0."));
      expect(e.responseStatus.errors[1].errorCode, equals("NotEmpty"));
      expect(e.responseStatus.errors[1].fieldName, equals("Required"));
      expect(e.responseStatus.errors[1].message, equals("'Required' should not be empty."));
    }

}

