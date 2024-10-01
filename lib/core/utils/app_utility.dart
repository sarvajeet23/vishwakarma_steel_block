import 'package:flutter/foundation.dart';

/// Enum to specify log levels.
enum LogLevel { info, warning, error, success }

class AppUtility {
  // ANSI escape codes for different colors
  static const String _resetColor = '\x1B[0m';  // Resets the terminal color
  static const String _redColor = '\x1B[31m';   // Red color for errors
  static const String _greenColor = '\x1B[32m'; // Green color for success
  static const String _yellowColor = '\x1B[33m';// Yellow color for warnings
  static const String _blueColor = '\x1B[34m';  // Blue color for info

  static bool stackTraceEnabled = false; // Flag for stack trace
  static bool debugMode = kDebugMode; // Control debug mode behavior

  /// Logs messages with an automatically determined log level if not provided.
  /// 
  /// If [stackTrace] is true, it will print the stack trace along with the message.
  static void log(String message, {bool stackTrace = false}) {
    // Automatically determine the log level based on the message content
    LogLevel level = _determineLogLevel(message);

    if (debugMode) {
      switch (level) {
        case LogLevel.error:
          _logWithColor(_redColor, 'ERROR', message, stackTrace);
          break;
        case LogLevel.success:
          _logWithColor(_greenColor, 'SUCCESS', message, stackTrace);
          break;
        case LogLevel.warning:
          _logWithColor(_yellowColor, 'WARNING', message, stackTrace);
          break;
        case LogLevel.info:
        default:
          _logWithColor(_blueColor, 'INFO', message, stackTrace);
          break;
      }
    }
  }

  /// Helper method to print a colored log message
  static void _logWithColor(String color, String label, String message, bool stackTrace) {
    // Print the colored log message
    debugPrint('$color[$label]: $message$_resetColor');

    // Print the stack trace if requested and enabled
    if (stackTrace && stackTraceEnabled) {
      StackTrace currentStackTrace = StackTrace.current;
      debugPrint('$color[STACK TRACE]: $currentStackTrace$_resetColor');
    }
  }

  /// Determines the log level based on the content of the message.
  static LogLevel _determineLogLevel(String message) {
    final lowerMessage = message.toLowerCase();

    if (lowerMessage.contains('error') ||
        lowerMessage.contains('fail') ||
        lowerMessage.contains('exception')) {
      return LogLevel.error;
    } else if (lowerMessage.contains('success')) {
      return LogLevel.success;
    } else if (lowerMessage.contains('warn') ||
        lowerMessage.contains('warning')) {
      return LogLevel.warning;
    } else {
      return LogLevel.info;
    }
  }
}
