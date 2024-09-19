import 'package:flutter/material.dart';

abstract class AppStyle {
  static const decoration = BoxDecoration(
    color: Color.fromARGB(255, 222, 219, 210),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );
  static boxDecoration(double height, double width) {
    return Container(
      decoration: decoration,
      width: width,
      height: height,
    );
  }
}
