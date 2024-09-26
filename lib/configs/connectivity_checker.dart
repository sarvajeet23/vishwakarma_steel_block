import 'dart:async';
import 'dart:io';

class ConnectivityChecker {
  final StreamController<bool> _controller = StreamController<bool>.broadcast();

  ConnectivityChecker() {
    _checkConnectivity();
  }

  Stream<bool> get connectivityStream => _controller.stream;

  void _checkConnectivity() {
    Timer.periodic(Duration(seconds: 5), (timer) async {
      bool isConnected = await _isConnected();
      _controller.add(isConnected);
    });
  }

  Future<bool> _isConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
