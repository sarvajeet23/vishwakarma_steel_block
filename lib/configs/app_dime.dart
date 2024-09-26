import 'package:flutter/material.dart';

class AppDime {
  static double _height = 0.0;
  static double _width = 0.0;

  // Method to set screen dimensions
  static void setScreenDimensions(double height, double width) {
    _height = height;
    _width = width;
  }

  // Getters for height and width
  static double get height => _height;
  static double get width => _width;

  // SizedBox for height
  static SizedBox sizedBoxHeight(double height) {
    return SizedBox(height: height);
  }

  // SizedBox for width
  static SizedBox sizedBoxWidth(double width) {
    return SizedBox(width: width);
  }

  // Method to create a circular container
  static Widget circularContainer({required double diameter, Color? color}) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        shape: BoxShape.circle,
      ),
    );
  }

  // Height multipliers
  static double get smallHeight => height * 0.02;
  static double get mediumHeight => height * 0.04;
  static double get largeHeight => height * 0.06;

  // Width multipliers
  static double get smallWidth => width * 0.02;
  static double get mediumWidth => width * 0.04;
  static double get largeWidth => width * 0.06;

  // Constant dimensions
  static const double buttonHeight = 48.0;
  static const double cardHeight = 150.0;
  static const double circleDiameter = 50.0;

  // Height properties based on screen height
  static double get h0 => height * 0.001;
  static double get h1 => height * 0.01;
  static double get h2 => height * 0.02;
  static double get h3 => height * 0.03;
  static double get h4 => height * 0.04;
  static double get h5 => height * 0.05;
  static double get h6 => height * 0.06;
  static double get h7 => height * 0.07;
  static double get h8 => height * 0.08;
  static double get h9 => height * 0.09;
  static double get h10 => height * 0.10;

  // Width properties based on screen width
  static double get w1 => width * 0.01;
  static double get w2 => width * 0.02;
  static double get w3 => width * 0.03;
  static double get w4 => width * 0.04;
  static double get w5 => width * 0.05;
  static double get w6 => width * 0.06;
  static double get w7 => width * 0.07;
  static double get w8 => width * 0.08;
  static double get w9 => width * 0.09;
  static double get w10 => width * 0.10;

  // Padding methods
  static EdgeInsets paddingAll(double value) {
    return EdgeInsets.all(value);
  }

  static EdgeInsets get padding => EdgeInsets.all(height * .00);
  static EdgeInsets get paddingSmall => EdgeInsets.all(smallHeight);
  static EdgeInsets get paddingMedium => EdgeInsets.all(mediumHeight);
  static EdgeInsets get paddingLarge => EdgeInsets.all(largeHeight);

  static EdgeInsets paddingSymmetric({double? vertical, double? horizontal}) {
    return EdgeInsets.symmetric(
      vertical: vertical ?? 0.0,
      horizontal: horizontal ?? 0.0,
    );
  }

  static EdgeInsets paddingOnly({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: left ?? 0.0,
      top: top ?? 0.0,
      right: right ?? 0.0,
      bottom: bottom ?? 0.0,
    );
  }

  // Padding methods for specific sides
  static EdgeInsets paddingLeft(double left) {
    return EdgeInsets.only(
      left: left,
      top: 0.0,
      right: 0.0,
      bottom: 0.0,
    );
  }

  static EdgeInsets paddingRight(double right) {
    return EdgeInsets.only(
      left: 0.0,
      top: 0.0,
      right: right,
      bottom: 0.0,
    );
  }

  static EdgeInsets paddingTop(double top) {
    return EdgeInsets.only(
      left: 0.0,
      top: top,
      right: 0.0,
      bottom: 0.0,
    );
  }

  static EdgeInsets paddingBottom(double bottom) {
    return EdgeInsets.only(
      left: 0.0,
      top: 0.0,
      right: 0.0,
      bottom: bottom,
    );
  }

  // Margin methods
  static EdgeInsets marginAll(double value) {
    return EdgeInsets.all(value);
  }

  static EdgeInsets get margin => EdgeInsets.all(h1);
  static EdgeInsets get marginSmall => EdgeInsets.all(smallHeight);
  static EdgeInsets get marginMedium => EdgeInsets.all(mediumHeight);
  static EdgeInsets get marginLarge => EdgeInsets.all(largeHeight);

  static EdgeInsets marginSymmetric({double? vertical, double? horizontal}) {
    return EdgeInsets.symmetric(
      vertical: vertical ?? 0.0,
      horizontal: horizontal ?? 0.0,
    );
  }

  static EdgeInsets marginOnly({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: left ?? 0.0,
      top: top ?? 0.0,
      right: right ?? 0.0,
      bottom: bottom ?? 0.0,
    );
  }

  // Margin methods for specific sides
  static EdgeInsets marginLeft(double left) {
    return EdgeInsets.only(
      left: left,
      top: 0.0,
      right: 0.0,
      bottom: 0.0,
    );
  }

  static EdgeInsets marginRight(double right) {
    return EdgeInsets.only(
      left: 0.0,
      top: 0.0,
      right: right,
      bottom: 0.0,
    );
  }

  static EdgeInsets marginTop(double top) {
    return EdgeInsets.only(
      left: 0.0,
      top: top,
      right: 0.0,
      bottom: 0.0,
    );
  }

  static EdgeInsets marginBottom(double bottom) {
    return EdgeInsets.only(
      left: 0.0,
      top: 0.0,
      right: 0.0,
      bottom: bottom,
    );
  }

  // SizedBox methods
  static SizedBox sizedBoxH(double value) {
    return SizedBox(height: value);
  }

  static SizedBox sizedBoxW(double value) {
    return SizedBox(width: value);
  }

  // Shortcut methods for h1 to h10 as SizedBox
  static SizedBox get h0Box => sizedBoxH(h0); // Added h0Box
  static SizedBox get h1Box => sizedBoxH(h1);
  static SizedBox get h2Box => sizedBoxH(h2);
  static SizedBox get h3Box => sizedBoxH(h3);
  static SizedBox get h4Box => sizedBoxH(h4);
  static SizedBox get h5Box => sizedBoxH(h5);
  static SizedBox get h6Box => sizedBoxH(h6);
  static SizedBox get h7Box => sizedBoxH(h7);
  static SizedBox get h8Box => sizedBoxH(h8);
  static SizedBox get h9Box => sizedBoxH(h9);
  static SizedBox get h10Box => sizedBoxH(h10);

  // Shortcut methods for w1 to w10 as SizedBox
  static SizedBox get w1Box => sizedBoxW(w1);
  static SizedBox get w2Box => sizedBoxW(w2);
  static SizedBox get w3Box => sizedBoxW(w3);
  static SizedBox get w4Box => sizedBoxW(w4);
  static SizedBox get w5Box => sizedBoxW(w5);
  static SizedBox get w6Box => sizedBoxW(w6);
  static SizedBox get w7Box => sizedBoxW(w7);
  static SizedBox get w8Box => sizedBoxW(w8);
  static SizedBox get w9Box => sizedBoxW(w9);
  static SizedBox get w10Box => sizedBoxW(w10);
}
