import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';

import 'log_level.dart';
import 'log_record.dart';

class AppTest {
  static final List<LogRecord> _logRecords = [];
  static bool _isLoggingEnabled = true;

  static void enableLogging() {
    _isLoggingEnabled = true;
  }

  static void disableLogging() {
    _isLoggingEnabled = false;
  }

  static void _log(LogLevel level, String message, {String? context}) {
    if (_isLoggingEnabled) {
      final record = LogRecord(level, message, context: context);
      _logRecords.add(record);
      log('${record.timestamp} [${record.level}] ${record.context != null ? '[${record.context}] ' : ''}${record.message}');
    }
  }

  static void info(String message, {String? context}) {
    _log(LogLevel.info, message, context: context);
  }

  static void error(String message, {String? context}) {
    _log(LogLevel.error, message, context: context);
  }

  static void warning(String message, {String? context}) {
    _log(LogLevel.warning, message, context: context);
  }

  static void debug(String message, {String? context}) {
    _log(LogLevel.debug, message, context: context);
  }

  static void fine(String message, {String? context}) {
    _log(LogLevel.fine, message, context: context);
  }

  static void finer(String message, {String? context}) {
    _log(LogLevel.finer, message, context: context);
  }

  static void finest(String message, {String? context}) {
    _log(LogLevel.finest, message, context: context);
  }

  static void config(String message, {String? context}) {
    _log(LogLevel.config, message, context: context);
  }

  static void severe(String message, {String? context}) {
    _log(LogLevel.severe, message, context: context);
  }

  static void critical(String message, {String? context}) {
    _log(LogLevel.critical, message, context: context);
  }

  static void shout(String message, {String? context}) {
    _log(LogLevel.shout, message, context: context);
  }

  static void logWithContext(String message, String context) {
    info(message, context: context);
  }

  static void logErrorWithStackTrace(String message, StackTrace stackTrace) {
    error('$message\n$stackTrace');
  }

  static void logFormatted(String message, {Map<String, String>? parameters}) {
    if (parameters != null) {
      parameters.forEach((key, value) {
        message = message.replaceAll('{$key}', value);
      });
    }
    info(message);
  }

  static void logIf(LogLevel level, String message) {
    if (_isLoggingEnabled) {
      _log(level, message);
    }
  }

  // FlutterError methods

  static void logFlutterError(FlutterErrorDetails details) {
    final message = details.exceptionAsString();
    final stackTrace = details.stack ?? StackTrace.current;
    logErrorWithStackTrace('Flutter Error: $message', stackTrace);

    // Reporting the error to Flutter's error reporting system
    FlutterError.reportError(
      FlutterErrorDetails(
        exception: details.exception,
        stack: stackTrace,
        library: 'YourLibraryName',
        context: ErrorDescription('Context description'),
      ),
    );
  }

  static void logFlutterErrorMessage(String message, {String? context}) {
    error('Flutter Error Message: $message', context: context);
  }

  static void logFlutterErrorWithStackTrace(
      String message, StackTrace stackTrace,
      {String? context}) {
    error('Flutter Error: $message\n$stackTrace', context: context);
  }

  static void handleGlobalError(Object error, StackTrace stackTrace) {
    logFlutterErrorWithStackTrace('Uncaught error: $error', stackTrace);
  }

  // Method to run the app within a Zone to catch uncaught errors
  static void runAppWithErrorHandling(Widget app) {
    runZonedGuarded(() {
      runApp(app);
    }, (error, stackTrace) {
      handleGlobalError(error, stackTrace);
    });
  }
}
