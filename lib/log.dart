part of servicestack;

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

  log(LogLevel level, String msg, [Exception? error = null]);
}

class ConsoleLogger extends Logger {
  log(LogLevel level, String msg, [Exception? error = null]) {
    print("${label(level)}: $msg");
  }
}

class NullLogger extends Logger {
  log(LogLevel level, String msg, [Exception? error = null]) {}
}

class Log {
  static List<LogLevel> levels = [LogLevel.Warn, LogLevel.Error];
  static Logger logger = ConsoleLogger();

  static isDebugEnabled() => levels.contains(LogLevel.Debug);
  static isInfoEnabled() => levels.contains(LogLevel.Info);
  static isWarnEnabled() => levels.contains(LogLevel.Warn);
  static isErrorEnabled() => levels.contains(LogLevel.Error);

  static debug(String msg) {
    if (isDebugEnabled()) {
      logger.log(LogLevel.Debug, msg);
    }
  }

  static info(String msg) {
    if (isInfoEnabled()) {
      logger.log(LogLevel.Info, msg);
    }
  }

  static warn(String msg, [Exception? error = null]) {
    if (isWarnEnabled()) {
      logger.log(LogLevel.Warn, msg);
    }
  }

  static error(String msg, [Exception? error = null]) {
    if (isErrorEnabled()) {
      logger.log(LogLevel.Error, msg, error);
    }
  }
}
