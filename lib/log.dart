part of 'servicestack.dart';

// ignore: constant_identifier_names
enum LogLevel { Debug, Info, Warn, Error }

abstract class Logger {
  String label(LogLevel level) {
    switch (level) {
      case LogLevel.Debug:
        return "DEBUG";
      case LogLevel.Info:
        return "INFO";
      case LogLevel.Warn:
        return "WARN";
      case LogLevel.Error:
        return "ERROR";
    }
  }

  void log(LogLevel level, String msg, [Exception? error]);
}

class ConsoleLogger extends Logger {
  @override
  void log(LogLevel level, String msg, [Exception? error]) {
    print("${label(level)}: $msg");
  }
}

class NullLogger extends Logger {
  @override
  void log(LogLevel level, String msg, [Exception? error]) {}
}

class Log {
  static List<LogLevel> levels = [LogLevel.Warn, LogLevel.Error];
  static Logger logger = ConsoleLogger();

  static bool isDebugEnabled() => levels.contains(LogLevel.Debug);
  static bool isInfoEnabled() => levels.contains(LogLevel.Info);
  static bool isWarnEnabled() => levels.contains(LogLevel.Warn);
  static bool isErrorEnabled() => levels.contains(LogLevel.Error);

  static void debug(String msg) {
    if (isDebugEnabled()) {
      logger.log(LogLevel.Debug, msg);
    }
  }

  static void info(String msg) {
    if (isInfoEnabled()) {
      logger.log(LogLevel.Info, msg);
    }
  }

  static void warn(String msg, [Exception? error]) {
    if (isWarnEnabled()) {
      logger.log(LogLevel.Warn, msg, error);
    }
  }

  static void error(String msg, [Exception? error]) {
    if (isErrorEnabled()) {
      logger.log(LogLevel.Error, msg, error);
    }
  }
}
