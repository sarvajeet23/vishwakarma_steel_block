import 'dart:developer';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void navToPush(Widget screen, {bool replace = false}) {
  if (replace) {
    log('Replacing with: ${screen.runtimeType}');
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  } else {
    log('Navigating to: ${screen.runtimeType}');
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

void navToPop() {
  log('Going back to previous screen');
  navigatorKey.currentState?.pop();
}
