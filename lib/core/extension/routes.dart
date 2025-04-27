import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void push(Widget page) {
    debugPrint("\x1b[33mNavigating to: ${page.runtimeType}");
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void pop() {
    debugPrint("\x1b[33mBack Current page");
    Navigator.pop(this);
  }

  void pushReplacement(Widget page) {
    debugPrint("\x1b[33mReplacing with: ${page.runtimeType}");
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void pushAndRemoveUntil(Widget page) {
    debugPrint("\x1b[33mPushing and removing until: ${page.runtimeType}");
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      (route) => false,
    );
  }
}
