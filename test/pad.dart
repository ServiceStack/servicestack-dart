// import '../lib/client.dart';

List<T> createList<T>(){ return new List<T>(); }

main(){
  List<String> strList = createList<String>();
  List<String> strList2 = new List<String>();

  print(strList.runtimeType.toString());
  print(strList2.runtimeType.toString());
}
