import 'dtos/test.dtos.dart';

import 'package:test/test.dart';
import 'package:collection/collection.dart';

HelloAllTypes createHelloAllTypes() => new HelloAllTypes (
    name: "name",
    allTypes: createAllTypes(),
    allCollectionTypes: createAllCollectionTypes()
);

AllTypes createAllTypes() =>
    new AllTypes (
        id: 1,
        char: 'c',
        byte: 2,
        short: 3,
        Int: 4,
        long: 5,
        uShort: 6,
        uInt: 7,
        uLong: 8,
        float: 1.1,
        Double: 2.2,
        decimal: 3.0,
        string: "string",
        dateTime: new DateTime.utc(2001, 1, 1),
        dateTimeOffset: new DateTime.utc(2001, 1, 1),
        timeSpan: new Duration(hours: 1),
        guid: "ea762009b66c410b9bf5ce21ad519249",
        stringList: ["A", "B", "C"],
        stringArray: ["D", "E", "F"],
        stringMap: {
          "A": "D",
          "B": "E",
          "C": "F",
        },
        intStringMap: {
          1: "A", 
          2: "B", 
          3: "C"
        },
        subType: new SubType(id: 1, name: "name")
    );

Function listEquals = const ListEquality().equals;
Function mapEquals = const MapEquality().equals;

void assertAllTypes(AllTypes dto) {
    expect(dto.id, equals(1));
    expect(dto.byte, equals(2));
    expect(dto.short, equals(3));
    expect(dto.Int, equals(4));
    expect(dto.uShort, equals(6));
    expect(dto.uInt, equals(7));
    expect(dto.uLong, equals(8));
    expect(dto.float, equals(1.1));
    expect(dto.Double, equals(2.2));
    expect(dto.decimal, equals(3.0));
    expect(dto.string, equals("string"));
    expect(dto.dateTime, equals(new DateTime.utc(2001, 1, 1)));
    expect(dto.dateTimeOffset, equals(new DateTime.utc(2001, 1, 1)));
    expect(dto.timeSpan, equals(new Duration(hours: 1)));
    expect(dto.guid, equals("ea762009b66c410b9bf5ce21ad519249"));
    expect(dto.stringList, equals(["A", "B", "C"]));
    expect(dto.stringArray, equals(["D", "E", "F"]));
    expect(dto.stringMap, equals({
      "A": "D",
      "B": "E",
      "C": "F",
    }));
    expect(dto.intStringMap, equals({
      1: "A", 
      2: "B", 
      3: "C"
    }));
    expect(dto.subType.id, equals(1));
    expect(dto.subType.name, equals("name"));
}

AllCollectionTypes createAllCollectionTypes() =>
    new AllCollectionTypes (
        intArray: [1, 2, 3],
        intList: [4, 5, 6],
        stringArray: ["A", "B", "C"],
        stringList: ["D", "E", "F"],
        pocoArray: [createPoco("pocoArray")],
        pocoList: [createPoco("pocoList")],
        pocoLookup: {
          "A": [createPoco("B"), createPoco("C")]
        },
        pocoLookupMap: {
          "A": [{
            "B": createPoco("C"),
            "D": createPoco("E")
          }]
        }
    );

void assertAllCollectionTypes(AllCollectionTypes dto) {
    expect(dto.intArray, equals([1, 2, 3]));
    expect(dto.intList, equals([4, 5, 6]));
    expect(dto.stringArray, equals(["A", "B", "C"]));
    expect(dto.stringList, equals(["D", "E", "F"]));
    expect(dto.pocoArray.length, equals(1));
    expect(dto.pocoArray[0].name, equals("pocoArray"));
    expect(dto.pocoList.length, equals(1));
    expect(dto.pocoList[0].name, equals("pocoList"));
    
    expect(dto.pocoLookup.length, equals(1));    
    var pocoLookupValues = dto.pocoLookup["A"];
    expect(pocoLookupValues.length, equals(2));
    expect(pocoLookupValues[0].name, equals("B"));
    expect(pocoLookupValues[1].name, equals("C"));

    expect(dto.pocoLookupMap.length, equals(1));
    var pocoLookupMapValues = dto.pocoLookupMap["A"];
    expect(pocoLookupMapValues.length, equals(1));
    var pocoLookupMapAList = pocoLookupMapValues[0];
    expect(pocoLookupMapAList.length, equals(2));
    expect((pocoLookupMapAList["B"] as Poco).name, equals("C"));
    expect((pocoLookupMapAList["D"] as Poco).name, equals("E"));
}

Poco createPoco(String name) => new Poco(name:name);
