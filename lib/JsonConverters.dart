part of client;

class JsonConverters
{
  static Map<String, Function> TypeFactories = {};

  static void addTypes(Map<String, Function> types) {
    TypeFactories.addAll(types);
  }

  static Map<String, IConverter> Converters = {
    'Duration': new DurationConverter(),
    'DateTime': new DateTimeConverter(),
    'List': new ListConverter(),
    'Map': new MapConverter(),
    'KeyValuePair': new KeyValuePairConverter(),
  };

  static IConverter enumConverter = new EnumConverter();
  static IConverter defaultConverter = new DefaultConverter();
  static List<String> nativeTypes = ["int","double","String","boolean","dynamic","Object"];

  static IConverter get(String typeName) {
    var converter = Converters[typeName] ?? Converters[leftPart(typeName, "<")];
    if (converter == null && typeName.endsWith("[]"))
      converter = Converters["List"];
    return converter;
  }

  static IConverter resolve(String typeName, Map<String,TypeInfo> types) {
    var converter = get(typeName);
    if (converter == null) {
      var typeInfo = types[typeName];
      if (typeInfo != null) {
        if (typeInfo.type == TypeOf.Enum)
          return enumConverter;
      }
    }
    return converter ?? defaultConverter;
  }

  static dynamic fromJson(dynamic value, String typeName, Map<String,TypeInfo> types) {
    var converter = resolve(typeName, types);
    return converter.fromJson(value, new ConverterContext(types:types, typeName:typeName));
  }

  static dynamic toJson(dynamic value, String typeName, Map<String,TypeInfo> types) {
    var converter = resolve(typeName, types);
    return converter.toJson(value, new ConverterContext(types:types, typeName:typeName));
  }

}

String _toString(value) => value == null ? null : value is String ? value : value.toString();

dynamic convert(dynamic value, String typeName, [ConverterContext context=null]) {
  if (typeName == "int") {
    return int.parse(_toString(value), onError: (s) => null);
  }
  if (typeName == "double") {
    return double.parse(_toString(value), (s) => null);
  }
  if (typeName == "String") {
    return _toString(value);
  }
  if (typeName == "bool") {
    if (value is bool)
      return value;
    var strBool = _toString(value);
    if (strBool == null)
      return false;
    strBool = strBool.toLowerCase();
    return strBool == "true" || strBool == "t" || strBool == "1";
  }
  if (context != null) {
    var typeInfo = context.getTypeInfo(typeName);
    if (typeInfo?.canCreate == true) {
      var o = typeInfo.createInstance();
      if (o is List) {
        var converter = JsonConverters.get("List");
        return converter.fromJson(value, context.newContext(typeName));
      } else if (o is Map) {
        var converter = JsonConverters.get("Map");
        return converter.fromJson(value, context.newContext(typeName));
      }
      try {
        var ret = o.fromMap(value);
        return ret;
      } catch(e) {
        rethrow;
      }
    }
  }
  return value;
}

dynamic populate(dynamic to, dynamic from, [ConverterContext context=null]) {
  if (from is Map) {
    Function fromMap = to.fromMap;
    if (fromMap != null) {
      return fromMap(from);
    }
  }
  return null;
}

class EnumConverter implements IConverter
{
  toJson(value, ConverterContext context) {
    return rightPart(value.toString(), ".");
  }

  fromJson(value, ConverterContext context) {
    var ret = context.typeInfo.enumValues.firstWhere((x) => rightPart(x.toString(), ".") == value);
    return ret;
  }
}

class DefaultConverter implements IConverter
{
  toJson(value, ConverterContext context) {
    if (value == null)
      return value;
    if (value is List || value is Map)
      return value;

    try {
      var ret = value.toJson();
      return ret;
    } catch(NoSuchMethodError) {
      return value;
    }
  }

  fromJson(value, ConverterContext context) {
    if (value == null || !context.typeInfo.canCreate)
      return value;

    var o = context.typeInfo.createInstance();
    if (value.runtimeType == o.runtimeType)
      return value;
    
    return populate(o, value, context);
  }  
}

class DateTimeConverter implements IConverter
{
  toJson(value, ConverterContext context) {
    DateTime dateTime = value is DateTime ? value : null;
    if (dateTime != null)
      return "\/Date(${dateTime.millisecondsSinceEpoch})\/";

    return value;
  }

  fromJson(value, ConverterContext context) {
    DateTime date = value is DateTime ? value : null;
    if (date != null) return date;

    String strDate = value is String ? value : null;
    if (strDate != null) {
      if (strDate.startsWith("\/Date(")) {
        var epochAndZone = leftPart(rightPart(strDate, "("), ")");
        var epochStr = leftPart(epochAndZone, "-");
        var epoch = int.parse(epochStr);
        return new DateTime.fromMillisecondsSinceEpoch(epoch, isUtc: true);
      }
      return DateTime.parse(strDate);
    }
    return value;
  }  
}

class MapConverter implements IConverter
{
  toJson(value, ConverterContext context) {
    if (value == null) return null;
    Map map = value is Map ? value : null;
    var to = {};
    if (map != null) {
      map.forEach((key,val) => to[key.toString()] = val);
      return to;
    }
    return value;
  }

  fromJson(value, ConverterContext context) {
    if (value == null) return null;
    var o = context.typeInfo.createInstance();
    if (value.runtimeType == o.runtimeType) {
      return value;
    }

    var toArgTypes = getGenericArgs(o.runtimeType.toString());

    Map map = value;
    map.forEach((key,val) => 
      o[convert(key,toArgTypes[0],context)] = convert(val,toArgTypes[1],context));

    return o;
  }  
}

class ListConverter implements IConverter
{
  toJson(value, ConverterContext context) {
    if (value == null) return null;
    List list = value is List ? value : null;
    var to = [];
    if (list != null) {
      list.forEach((x) => to.add(x));
      return to;
    }
    return value;
  }  

  fromJson(value, ConverterContext context) {
    if (value == null) return null;
    var o = context.typeInfo.createInstance();
    if (value.runtimeType == o.runtimeType) {
      return value;
    }

    var genericArgs = getGenericArgs(o.runtimeType.toString());
    var toArgType = genericArgs.length > 0 ? genericArgs[0] : 'dynamic';

    List list = value;
    list.forEach((x) => 
      o.add(convert(x,toArgType,context))
    );

    return o;
  }
}

class KeyValuePairConverter implements IConverter
{
  fromJson(value, ConverterContext context) {
    if (value == null) return null;
    var to = context.typeInfo.createInstance();
    Map map = value is Map ? value : null;
    if (map != null)
    {
      if (map.length == 0)
        return null;
        
      map.forEach((key,val) => to.key = val);
    }
    return to;
  }

   toJson(value, ConverterContext context) {
     if (value == null) return null;
    var to = {};
    KeyValuePair kvp = value is KeyValuePair ? value : null;
    if (kvp != null) {
      return { [kvp.key.toString()]: kvp.value };
    }
    return to;
  }  
}
