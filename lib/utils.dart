part of client;

List<String> splitOnFirst(String s, String c) {
    if (s == null || s == "") return [s];
    var pos = s.indexOf(c);
    return pos >= 0 ? [s.substring(0, pos), s.substring(pos + 1)] : [s];
}

List<String> splitOnLast(String s, String c) {
    if (s == null || s == "") return [s];
    var pos = s.lastIndexOf(c);
    return pos >= 0
        ? [s.substring(0, pos), s.substring(pos + 1)]
        : [s];
}

String leftPart(String strVal, String needle)
{
    if (strVal == null) return null;
    var pos = strVal.indexOf(needle);
    return pos == -1
        ? strVal
        : strVal.substring(0, pos);
}

String rightPart(String strVal, String needle)
{
    if (strVal == null) return null;
    var pos = strVal.indexOf(needle);
    return pos == -1
        ? strVal
        : strVal.substring(pos + needle.length);
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
    while (text[i] == character){
        if (--i < 0) {
            return "";
        }
    }
    return text.substring(0, i + 1).trim();
}

List<String> getGenericArgs(String type) {
  var parts = splitOnFirst(type, "<");
  if (parts.length == 1)
    return [];

  var argsString = leftPart(parts[1], ">");
  return argsString.split(",").map((x) => x.trim()).toList();
}