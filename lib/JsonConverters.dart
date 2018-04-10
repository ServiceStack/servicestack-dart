part of client;

class JsonConverters
{
  static Map<String, Function> TypeFactories = {};

  static void addTypes(Map<String, Function> types) {
    TypeFactories.addAll(types);
  }

  static Map<String, Function> Converters = {
    'TimeSpan': (type) => new TimeSpanConverter(),
    'DateTime': (type) => new DateTimeConverter(),
    'DateTimeOffset': (type) => new DateTimeConverter(),
    'List': (type) => new ListConverter(type),
    'Dictionary': (type) => new DictionaryConverter(type),
    'KeyValuePair': (type) => new KeyValuePairConverter(type),
  };

  static IConverter get(String typeName) {
    var converter = Converters[typeName] ?? Converters[leftPart(typeName, "<")];
    if (converter == null && typeName.endsWith("[]"))
      converter = Converters["List"];
    return converter != null
      ? converter(typeName)
      : new DefaultConverter(typeName);
  }

  static Function enumConverterFactory = (values) => new EnumConverter(values);

  static IConverter getEnum<T>(List<T> values) {
    return enumConverterFactory(values);
  }
}

String _toString(value) => value is String ? value : value.toString();

dynamic convert(dynamic value, String typeName) {
  if (typeName == "int") {
    return int.parse(_toString(value), onError: (s) => null);
  }
  if (typeName == "double") {
    return double.parse(_toString(value), (s) => null);
  }
  if (typeName == "String") {
    return _toString(value);
  }
  return value;
}

dynamic populate(dynamic to, dynamic from, String typeName) {
  if (from is Map) {
    Function fromMap = to.fromMap;
    if (fromMap != null) {
      return fromMap(from);
    }
  }
  return null;
}

class EnumConverter<T> implements IConverter
{
  List<T> values;
  EnumConverter(this.values);

  T fromJson<T>(value, T factory()) {
    var ret = values.firstWhere((x) => rightPart(x.toString(), ".") == value);
    var t = ret is T ? ret : null;
    return t != null
      ? ret
      : value;
  }

  toJson(value) {
    return rightPart(value.toString(), ".");
  }
}

class DefaultConverter implements IConverter
{
  String type;
  DefaultConverter(this.type);

  toJson(dynamic value) {
    return value;
  }

  T fromJson<T>(value, T factory()) {
    if (value == null || factory == null)
      return value;

    var f = factory();    
    if (value.runtimeType == f.runtimeType)
      return value;
    
    return populate(f, value, type);
  }  
}

class DateTimeConverter implements IConverter
{
  toJson(dynamic value) {
    DateTime dateTime = value is DateTime ? value : null;
    if (dateTime != null)
      return "\/Date(${dateTime.millisecondsSinceEpoch})\/";

    return value;
  }

  T fromJson<T>(value, T factory()) {
    DateTime date = value is DateTime ? value : null;
    if (date != null) return date as T;

    String strDate = value is String ? value : null;
    if (strDate != null) {
      if (strDate.startsWith("\/Date(")) {
        var epochAndZone = leftPart(rightPart(strDate, "("), ")");
        var epochStr = leftPart(epochAndZone, "-");
        var epoch = int.parse(epochStr);
        return new DateTime.fromMillisecondsSinceEpoch(epoch, isUtc: true) as T;
      }
      return DateTime.parse(strDate) as T;
    }
    return value;
  }  
}

class DictionaryConverter implements IConverter
{
  String type;
  DictionaryConverter(this.type);

  toJson(dynamic value) {
    if (value == null) return null;
    Map map = value is Map ? value : null;
    var to = {};
    if (map != null) {
      map.forEach((key,val) => to[key.toString()] = val);
      return to;
    }
    return value;
  }

  T fromJson<T>(value, T factory()) {
    if (value == null) return null;
    var f = factory();
    if (value.runtimeType == f.runtimeType) {
      return value;
    }

    var toArgTypes = getGenericArgs(f.runtimeType.toString());

    Map map = value;
    map.forEach((key,value) => 
      f[convert(key,toArgTypes[0])] = convert(value,toArgTypes[1]));

    return f;
  }  
}

class ListConverter implements IConverter
{
  String type;
  ListConverter(this.type);

  toJson(dynamic value) {
    return value;
  }  

  T fromJson<T>(value, T factory()) {
    return value;
  }
}

class KeyValuePairConverter implements IConverter
{
  String type;
  KeyValuePairConverter(this.type);

  T fromJson<T>(value, T factory()) {
    if (value == null) return null;
    var to = factory();
    Map map = value is Map ? value : null;
    if (map != null)
    {
      if (map.length == 0)
        return null;
        
      map.forEach((key,val) => to.key = val);
    }
    return to;
  }

   toJson(dynamic value) {
     if (value == null) return null;
    var to = {};
    KeyValuePair kvp = value is KeyValuePair ? value : null;
    if (kvp != null) {
      return { [kvp.key.toString()]: kvp.value };
    }
    return to;
  }  
}
