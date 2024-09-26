// lib/view/network_exception_widget.dart
import 'package:flutter/material.dart';

class NetworkExceptionWidget extends StatelessWidget {
  final VoidCallback onRetry;

  const NetworkExceptionWidget({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.cloud_off,
            color: Colors.red,
            size: 50,
          ),
          const SizedBox(height: 20),
          const Text(
            'We’re unable to show results.\nPlease check your data connection.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('RETRY'),
          ),
        ],
      ),
    );
  }
}
