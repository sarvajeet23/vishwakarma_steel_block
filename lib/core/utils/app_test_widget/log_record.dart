import 'log_level.dart';

class LogRecord {
  final DateTime timestamp;
  final LogLevel level;
  final String message;
  final String? context;

  LogRecord(this.level, this.message, {this.context})
      : timestamp = DateTime.now();
}
