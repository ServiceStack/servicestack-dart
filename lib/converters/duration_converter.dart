part of client;

class DurationConverter implements IConverter
{
  dynamic fromJson(value, ConverterContext context) {
    Duration duration = value is Duration ? value : null;
    if (duration != null) return duration;

    var str = value as String;
    if (str == null)     
      return value;

    int days = 0;
    int hours = 0;
    int minutes = 0;
    int seconds = 0;
    double ms = 0.0;      

    var t = splitOnFirst(str, 'T'); //strip P
    var hasTime = t.length == 2;
    var d = splitOnFirst(t[0], 'D');
    if (d.length == 2) {
      var day = int.parse(d[0], onError: (s) => null);
      if (day != null) {
        days = day;
      }
    }

    if (hasTime) {
      var h = splitOnFirst(t[1], 'H');
      if (h.length == 2) {
        var hour = int.parse(h[0], onError: (s) => null);
        if (hour != null) {
          hours = hour;
        }
      }

      var m = splitOnFirst(h[h.length - 1], 'M');
      if (m.length == 2) {
        var min = int.parse(m[0], onError: (s) => null);
        if (min != null) {
          minutes = min;
        }
      }

      var s = splitOnFirst(m[m.length - 1], 'S');
      if (s.length == 2) {
        var millis = double.parse(s[0], (s) => null);
        if (millis != null) {
          ms = millis;
        }
      }

      seconds = ms.toInt();
      ms -= seconds;      
    }

    return new Duration(days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: (ms * 1000).toInt());
  }

  toJson(dynamic value, ConverterContext context) {
    Duration duration = value is Duration ? value : null;
    if (duration == null)
      return null;

    StringBuffer sb = new StringBuffer("P");

    double totalSeconds = duration.inMilliseconds / 1000;
    int wholeSeconds = totalSeconds.toInt();
    int seconds = wholeSeconds;
    int sec = (seconds >= 60 ? seconds % 60 : seconds);
    int min = (seconds = (seconds ~/ 60)) >= 60 ? seconds % 60 : seconds;
    int hours = (seconds = (seconds ~/ 60)) >= 24 ? seconds % 24 : seconds;
    int days = seconds ~/ 24;
    double remainingSecs = sec + (totalSeconds - wholeSeconds);

    if (days > 0)
        sb.write("${days}D");

    if (days == 0 || hours + min + sec + remainingSecs > 0) {

        sb.write("T");
        if (hours > 0)
            sb.write("${hours}H");

        if (min > 0)
            sb.write("${min}M");

        if (remainingSecs > 0) {
            String secFmt = remainingSecs.toStringAsFixed(7);
            secFmt = trimEnd(secFmt, '0');
            secFmt = trimEnd(secFmt, '.');
            sb.write(secFmt);
            sb.write("S");
        } else if (sb.length == 2) {//PT
            sb.write("0S");
        }
    }

    String xsdDuration = sb.toString();    
    return xsdDuration;
  }  
}