part of 'servicestack.dart';

class JsonConverters {
  // ignore: non_constant_identifier_names
  static Map<String, Function> TypeFactories = {};

  static GetJson getJson = defaultGetJson;

  static dynamic defaultGetJson(Map<String, dynamic> map, String propertyName) {
    return map[propertyName] ??
        map[propertyName.substring(0, 1).toUpperCase() +
            propertyName.substring(1)];
  }

  static void addTypes(Map<String, Function> types) {
    TypeFactories.addAll(types);
  }

  // ignore: non_constant_identifier_names
  static Map<String, IConverter> Converters = {
    'Duration': DurationConverter(),
    'DateTime': DateTimeConverter(),
    'List': ListConverter(),
    'Uint8List': ByteArrayConverter(),
    '_GrowableList': ListConverter(),
    'Map': MapConverter(),
    '_InternalLinkedHashMap': MapConverter(),
    'KeyValuePair': KeyValuePairConverter(),
  };

  static IConverter enumConverter = EnumConverter();
  static IConverter defaultConverter = DefaultConverter();
  static List<String> nativeTypes = [
    "int",
    "double",
    "String",
    "boolean",
    "dynamic",
    "Object"
  ];

  static IConverter? get(String? typeName) {
    var converter = Converters[typeName] ?? Converters[leftPart(typeName, "<")];
    if (converter == null && typeName != null) {
      if (typeName.endsWith("[]")) {
        converter = Converters["List"];
      }
    }

    return converter;
  }

  static IConverter resolve(String? typeName, TypeContext context) {
    var converter = get(typeName);
    if (converter == null) {
      var typeInfo = context.getTypeInfo(typeName!);
      if (typeInfo != null) {
        if (typeInfo.type == TypeOf.Enum) return enumConverter;
      }
    }
    return converter ?? defaultConverter;
  }

  static dynamic fromJson(dynamic value, String typeName, TypeContext context) {
    var newContext = TypeContext(
        types: context.types,
        typeName: typeName,
        childContext: context.childContext)
      ..addChildContext(_ctx);
    var converter = resolve(typeName, newContext);
    return converter.fromJson(value, newContext);
  }

  static dynamic toJson(dynamic value, String typeName, TypeContext context) {
    var newContext = TypeContext(
        types: context.types,
        typeName: typeName,
        childContext: context.childContext)
      ..addChildContext(_ctx);
    var converter = resolve(typeName, newContext);
    return converter.toJson(value, newContext);
  }

  static double? toDouble(dynamic value) {
    if (value == null || value is double) {
      return value;
    }
    if (value is int) {
      return value.toDouble();
    }
    String str = _toString(value)!;
    return double.parse(str);
  }

  static Map<String, String?>? toStringMap(dynamic value) {
    if (value is Map<String, dynamic>) {
      var to = <String, String?>{};
      value.forEach((key, val) => to[key] = _toString(val));
      return to;
    }
    return value;
  }

  static String? asString(dynamic value) => _toString(value);
}

String? _toString(dynamic value) => value == null
    ? null
    : value is String
        ? value
        : value.toString();

String? getTypeName(dynamic value, TypeContext context) {
  var typeName = nameOf(value)!;
  if (isMinified(typeName)) {
    var originalType = context.resolveMinifiedTypeName(typeName);
    if (Log.isDebugEnabled()) {
      Log.debug(
          "getTypeName(): Found minified type $typeName => $originalType");
    }
    if (originalType != null) {
      return originalType;
    }
    Log.warn(
        "getTypeName(): Could not resolve minified type '$typeName', falling back to context.typeName '${context.typeName}'");
    return context.typeName;
  }
  return typeName;
}

bool _equals(dynamic left, dynamic right) {
  if (left == right) return true;
  if (left != null && right != null) return left.toString() == right.toString();
  return false;
}

dynamic convert(dynamic value, String typeName, [TypeContext? context]) {
  typeName = trimEnd(typeName, '?'); // test without optional
  if (typeName == "dynamic") {
    Log.warn(
        "convert(): skipping converting '${value.runtimeType}' to 'dynamic' type");
    return value;
  }
  if (typeName == "int") {
    return int.tryParse(_toString(value)!);
  }
  if (typeName == "double") {
    return double.tryParse(_toString(value)!);
  }
  if (typeName == "String") {
    return _toString(value);
  }
  if (typeName == "bool") {
    if (value is bool) return value;
    var strBool = _toString(value);
    if (strBool == null) return false;
    strBool = strBool.toLowerCase();
    return strBool == "true" || strBool == "t" || strBool == "1";
  }
  if (context != null) {
    var typeInfo = context.getTypeInfo(typeName);
    if (typeInfo != null) {
      if (typeInfo.type == TypeOf.Enum) {
        var o = JsonConverters.enumConverter
            .fromJson(value, context.newContext(typeName));
        return o;
      } else if (typeInfo.canCreate == true) {
        var o = typeInfo.createInstance();
        if (o is List) {
          var converter = JsonConverters.get("List")!;
          return converter.fromJson(value, context.newContext(typeName));
        } else if (o is Map) {
          var converter = JsonConverters.get("Map")!;
          return converter.fromJson(value, context.newContext(typeName));
        }
        try {
          if (o is IConvertible) {
            o.context = context;
          }
          var ret = o.fromMap(value);
          return ret;
        } catch (e, trace) {
          Log.error("convert(): $e\n$trace", e as Exception?);
          rethrow;
        }
      }
    }
  }
  return value;
}

dynamic populate(dynamic to, dynamic from, [TypeContext? context]) {
  if (from is Map) {
    if (context != null && to is IConvertible) {
      to.context = context;
    }
    Function? fromMap = to.fromMap;
    if (fromMap != null) {
      return fromMap(from);
    }
  }
  return null;
}

String? getResponseType(dynamic request, dynamic responseAs) {
  try {
    Function? getResponseTypeName = request.getResponseTypeName;
    if (getResponseTypeName != null) {
      return getResponseTypeName();
    }
  } catch (e, trace) {
    Log.error("getResponseType(): $e\n$trace", e as Exception?);
  }
  return nameOf(responseAs);
}

dynamic convertTo(dynamic request, dynamic responseAs, dynamic jsonObj) {
  TypeContext? reqContext;
  if (request is IConvertible) {
    reqContext = request.context;
  } else if (request is List) {
    var firstRequest = request[0];
    var firstResponse = firstRequest.createResponse();
    var elementType = nameOf(firstResponse);
    var listType = "List<$elementType>";
    reqContext = createListContext(
        (firstRequest as IConvertible).context!, listType, responseAs);
    return ListConverter.populate(responseAs, listType, jsonObj, reqContext);
  }
  if (responseAs is List) {
    var listType = getResponseType(request, responseAs);
    return ListConverter.populate(responseAs, listType, jsonObj, reqContext);
  }
  if (reqContext != null && responseAs is IConvertible) {
    responseAs.context = reqContext;
  }
  var fromMap = responseAs.fromMap;
  var ret = fromMap(jsonObj);
  return ret;
}

TypeContext createListContext(
    TypeContext reqContext, String listType, dynamic responseAs) {
  var existingInfo = reqContext.getTypeInfo(listType);
  reqContext = TypeContext(
      typeName: listType,
      types: {
        //List<T> in Dart 1.9 (non Strong mode) creates non generic List (dynamic)
        listType:
            existingInfo ?? TypeInfo(TypeOf.Class, create: () => responseAs)
      },
      childContext: reqContext);
  return reqContext;
}

class EnumConverter implements IConverter {
  @override
  toJson(enumValue, TypeContext context) {
    return toEnumValue(enumValue);
  }

  String? toEnumValue(dynamic enumValue) {
    if (enumValue == null) return null;
    try {
      return enumValue.value;
    } catch (e) {
      Log.debug("toEnumValue(): ignored toEnumValue error: $e");
      return rightPart(enumValue.toString(), ".");
    }
  }

  @override
  fromJson(value, TypeContext context) {
    if (value == null) return null;
    var ret = context.typeInfo.enumValues!
        .firstWhereOrNull((x) => _equals(toEnumValue(x), value));
    return ret;
  }
}

class DefaultConverter implements IConverter {
  @override
  toJson(value, TypeContext context) {
    if (value == null) return value;
    if (value is List || value is Map) return value;

    try {
      var ret = value.toJson();
      return ret;
    } catch (e) {
      Log.debug("DefaultConverter: '$value' does not have toJson(): $e");
      return value;
    }
  }

  @override
  fromJson(value, TypeContext context) {
    if (value == null || !context.typeInfo.canCreate) return value;

    var o = context.typeInfo.createInstance();
    if (value.runtimeType == o.runtimeType) return value;

    return populate(o, value, context);
  }
}

class ByteArrayConverter implements IConverter {
  @override
  fromJson(value, TypeContext context) {
    String? base64 = value is String ? value : null;
    if (base64 != null) return fromByteArray(value);
    List<int>? bytes = value is List<int> ? value : null;
    if (value != null) return Uint8List.fromList(bytes!);
    return null;
  }

  @override
  toJson(value, TypeContext context) {
    if (value == null) return null;
    Uint8List? bytes = value is Uint8List ? value : null;
    return bytes != null ? toByteArray(bytes) : null;
  }
}

// From .NET byte[] (Base64 String) to Dart Uint8List
Uint8List fromByteArray(String base64String) => base64.decode(base64String);

// From Dart Uint8List to .NET byte[] (Base64 String)
String toByteArray(Uint8List bytes) => base64.encode(bytes);

class DateTimeConverter implements IConverter {
  @override
  toJson(value, TypeContext context) {
    DateTime? dateTime = value is DateTime ? value : null;
    if (dateTime != null) return toDateTime(dateTime);

    return value;
  }

  @override
  fromJson(value, TypeContext context) {
    DateTime? date = value is DateTime ? value : null;
    if (date != null) return date;
    String? strDate = value is String ? value : null;
    if (strDate != null) {
      return fromDateTime(strDate);
    }
    return value;
  }
}

// From .NET DateTime (WCF JSON or ISO Date) to Dart DateTime
DateTime fromDateTime(String jsonDate) {
  if (jsonDate.startsWith("/Date(")) {
    var epochAndZone = leftPart(rightPart(jsonDate, "("), ")")!;
    var epochStr = epochAndZone;
    if (epochAndZone.indexOf('-', 1) >= 0) {
      epochStr = lastLeftPart(epochAndZone, "-")!;
    } else if (epochAndZone.indexOf('+', 1) >= 0) {
      epochStr = lastLeftPart(epochAndZone, "+")!;
    }
    var epoch = int.parse(epochStr);
    return DateTime.fromMillisecondsSinceEpoch(epoch, isUtc: true);
  }
  var hasSecFraction = jsonDate.contains(".");
  if (hasSecFraction) {
    var secFraction = lastRightPart(jsonDate, ".");
    bool isUtc = secFraction.endsWith('Z');
    if (isUtc) {
      secFraction = secFraction.substring(0, secFraction.length - 1);
    }
    String tz = '';
    if (secFraction.contains('+')) {
      tz = '+${rightPart(secFraction, '+')!}';
      secFraction = leftPart(secFraction, '+')!;
    } else if (secFraction.contains('-')) {
      tz = '-${rightPart(secFraction, '-')!}';
      secFraction = leftPart(secFraction, '-')!;
    }
    if (secFraction.length > 6) {
      jsonDate =
          '${lastLeftPart(jsonDate, '.')}.${secFraction.substring(0, 6)}$tz${isUtc ? 'Z' : ''}';
    }
  }
  return DateTime.parse(jsonDate);
}

// From Dart DateTime to .NET DateTime (WCF JSON Date)
String toDateTime(DateTime dateTime) {
  return "/Date(${dateTime.millisecondsSinceEpoch})/";
}

class MapConverter implements IConverter {
  @override
  toJson(value, TypeContext context) {
    if (value == null) return null;
    Map? map = value is Map ? value : null;
    var to = {};
    if (map != null) {
      map.forEach((key, val) {
        var keyConverter = JsonConverters.resolve(nameOf(key), context);
        var mapKey = keyConverter.toJson(key, context);
        var valueConverter =
            val != null ? JsonConverters.resolve(nameOf(val), context) : null;
        to[mapKey.toString()] = valueConverter?.toJson(val, context);
      });
      return to;
    }
    return value;
  }

  @override
  fromJson(value, TypeContext context) {
    if (value == null) return null;
    var o = context.typeInfo.createInstance();
    if (value.runtimeType == o.runtimeType) {
      return value;
    }

    var toArgTypes = getGenericArgs(getTypeName(o, context));

    Map map = value;
    map.forEach((key, val) {
      o[convert(key, toArgTypes[0], context)] =
          convert(val, toArgTypes[1], context);
    });

    return o;
  }
}

class ListConverter implements IConverter {
  @override
  toJson(value, TypeContext context) {
    if (value == null) return null;
    List? list = value is List ? value : null;
    var to = [];
    if (list != null) {
      for (var x in list) {
        var converter =
            JsonConverters.resolve(getTypeName(x, context), context);
        var item = converter.toJson(x, context);
        to.add(item);
      }
      return to;
    }
    return value;
  }

  @override
  fromJson(value, TypeContext context) {
    if (value == null) return null;
    var o = context.typeInfo.createInstance();
    if (value.runtimeType == o.runtimeType) {
      return value;
    }
    return populate(o, getTypeName(o, context), value, context);
  }

  static String getElementType(String? listType) {
    var genericArgs = getGenericArgs(listType);
    return genericArgs.isNotEmpty ? genericArgs[0] : 'dynamic';
  }

  static List? populate(
      List? target, String? listType, List from, TypeContext? context) {
    var elementType = getElementType(listType);
    List list = from;
    for (var x in list) {
      var item = convert(x, elementType, context);
      target!.add(item);
    }
    return target;
  }
}

class KeyValuePairConverter implements IConverter {
  @override
  fromJson(value, TypeContext context) {
    if (value == null) return null;
    var to = context.typeInfo.createInstance();
    Map? map = value is Map ? value : null;
    if (map != null) {
      if (map.isEmpty) return null;

      map.forEach((key, val) => to.key = val);
    }
    return to;
  }

  @override
  toJson(value, TypeContext context) {
    if (value == null) return null;
    var to = {};
    KeyValuePair? kvp = value is KeyValuePair ? value : null;
    if (kvp != null) {
      return {
        [kvp.key.toString()]: kvp.value
      };
    }
    return to;
  }
}
