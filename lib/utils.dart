part of client;

List<String> splitOnFirst(String s, String c) {
  if (s == null || s == "") return [s];
  var pos = s.indexOf(c);
  return pos >= 0 ? [s.substring(0, pos), s.substring(pos + 1)] : [s];
}

List<String> splitOnLast(String s, String c) {
  if (s == null || s == "") return [s];
  var pos = s.lastIndexOf(c);
  return pos >= 0 ? [s.substring(0, pos), s.substring(pos + 1)] : [s];
}

String leftPart(String strVal, String needle) {
  if (strVal == null) return null;
  var pos = strVal.indexOf(needle);
  return pos == -1 ? strVal : strVal.substring(0, pos);
}

String lastLeftPart(String strVal, String needle) {
  if (strVal == null) return null;
  var pos = strVal.lastIndexOf(needle);
  return pos == -1 ? strVal : strVal.substring(0, pos);
}

String rightPart(String strVal, String needle) {
  if (strVal == null) return null;
  var pos = strVal.indexOf(needle);
  return pos == -1 ? strVal : strVal.substring(pos + needle.length);
}

String lastRightPart(String strVal, String needle) {
  if (strVal == null) return null;
  var pos = strVal.lastIndexOf(needle);
  return pos == -1 ? strVal : strVal.substring(pos + needle.length);
}

String trimStart(String text, String character) {
  if (text == null || text.length == 0) return "";

  int i = 0;
  while (text[i] == character) {
    i++;
  }
  return text.substring(i).trim();
}

String trimEnd(String text, String character) {
  if (text == null || text.length == 0) return "";

  int i = text.length - 1;
  while (text[i] == character) {
    if (--i < 0) {
      return "";
    }
  }
  return text.substring(0, i + 1).trim();
}

List<String> getGenericArgs(String type) {
  var parts = splitOnFirst(type, "<");
  if (parts.length == 1) return [];

  var argsString = lastLeftPart(parts[1], ">");
  return splitGenericArgs(argsString);
}

List<String> splitGenericArgs(String argsString) {
  var to = <String>[];
  var lastPos = 0;
  var inBrackes = 0;
  for (var i = 0; i < argsString.length; i++) {
    var c = argsString[i];
    if (inBrackes > 0) {
      if (c == '<')
        inBrackes++;
      else if (c == '>') inBrackes--;
      continue;
    }
    if (c == '<') {
      inBrackes++;
      continue;
    }
    if (c == ',') {
      var arg = argsString.substring(lastPos, i - lastPos).replaceAll(" ", "");
      to.add(arg);
      lastPos = i + 1;
    }
  }

  var lastArg = argsString.substring(lastPos).replaceAll(" ", "");
  ;
  to.add(lastArg);
  return to;
}

List<String> runtimeGenericTypeDefs(instance, List<int> indexes) {
  var genericArgs = getGenericArgs(instance.runtimeType.toString());
  var argTypes = <String>[];
  indexes.forEach((i) => argTypes.add(genericArgs[i]));
  return argTypes;
}

String combinePaths(List<String> paths) {
  List<String> parts = [];
  for (int i = 0; i < paths.length; i++) {
    var arg = paths[i];
    if (arg.indexOf("://") == -1)
      parts.addAll(arg.split("/"));
    else
      parts.add(arg.lastIndexOf("/") == arg.length - 1
          ? arg.substring(0, arg.length - 1)
          : arg);
  }
  List<String> combinedPaths = [];
  for (int i = 0; i < parts.length; i++) {
    var part = parts[i];
    if (part == null || part == "" || part == ".") continue;
    if (part == "..")
      combinedPaths.removeLast();
    else
      combinedPaths.add(part);
  }
  if (parts[0] == "") combinedPaths.insert(0, "");
  var ret = combinedPaths.join("/");
  return ret.length > 0 ? ret : (combinedPaths.length == 0 ? "/" : ".");
}
