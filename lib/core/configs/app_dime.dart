import 'dart:developer';

import 'package:flutter/material.dart';

class Dime {
  static late double width;
  static late double height;
  static late double fontsize;

  static void init(
    double screenWidth,
    double screenHeight,
  ) {
    assert(screenWidth > 0 && screenHeight > 0,
        "Screen dimensions must be positive.");
    width = screenWidth;
    height = screenHeight;
    fontsize = height / 100;
  }

  // Standard Dimensions
  static double get fsmall => fontsize * 5.2;
  static double get fmedium => fontsize * 10.0;
  static double get flarge => fontsize * 12.0;
  static double get fsize1 => fontsize * 1;
  static double get fsize2 => fontsize * 1.1;
  static double get fsize3 => fontsize * 1.2;
  static double get fsize4 => fontsize * 1.3;
  static double get fsize5 => fontsize * 1.4;
  static double get fsize6 => fontsize * 1.5;

  // Custom Border Radius
  static BorderRadius borderRadius(double radius) {
    return BorderRadius.circular(radius);
  }

  // Text Styles
  static TextStyle textStyle(
    double fontSize,
    FontWeight weight,
    Color color, {
    String fontFamily = 'Roboto',
    double? letterSpacing,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: weight,
      color: color,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      height: height,
      decoration: decoration,
    );
  }

  static TextStyle get heading1 =>
      textStyle(fsize3 * 4, FontWeight.normal, Colors.black);
  static TextStyle get caption =>
      textStyle(fsize5 * 4, FontWeight.normal, Colors.grey);
  static TextStyle get smallText => textStyle(
        fontsize * 4,
        FontWeight.normal,
        Colors.black,
      ); // font size  12, normal weight, black color

  static TextStyle get mediumText => textStyle(
        fontsize * 6,
        FontWeight.bold,
        Colors.black,
      ); // font size  16, normal weight, black color
  static TextStyle get largeText => textStyle(
        fontsize * 8,
        FontWeight.w500,
        Colors.black,
      ); // font size  20, normal weight, black color

  // Responsive Icons
  static Icon responsiveIcon(IconData iconData, double sizeMultiplier) {
    return Icon(iconData, size: height * sizeMultiplier);
  }

  static Icon get smallIcon => responsiveIcon(Icons.star, 0.03);
  static Icon get mediumIcon => responsiveIcon(Icons.star, 0.05);
  static Icon get largeIcon => responsiveIcon(Icons.star, 0.07);

  // Box Shadows
  static BoxShadow boxShadow({
    Color? color,
    double? blurRadius,
    Offset? offset,
  }) {
    return BoxShadow(
      color: color ?? Colors.black.withOpacity(0.1),
      blurRadius: blurRadius ?? 4.0,
      offset: offset ?? Offset(0, 2),
    );
  }

// Shadow Radii
  static double get smallBlurRadius => height / 500; // Adjust as needed
  static double get mediumBlurRadius => height / 300; // Adjust as needed
  static double get largeBlurRadius => height / 150; // Adjust as needed

  static List<BoxShadow> get smallShadow =>
      [boxShadow(blurRadius: smallBlurRadius)];
  static List<BoxShadow> get mediumShadow =>
      [boxShadow(blurRadius: mediumBlurRadius)];
  static List<BoxShadow> get largeShadow =>
      [boxShadow(blurRadius: largeBlurRadius)];

  // Aspect Ratio
  static double get aspectRatio => width / height;

  static Widget aspectRatioWidget(double aspectRatio, Widget child) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: child,
    );
  }

  // Percentage Padding & Margin
  static EdgeInsets paddingPercent(
      double verticalPercent, double horizontalPercent) {
    return EdgeInsets.symmetric(
      vertical: height * verticalPercent,
      horizontal: width * horizontalPercent,
    );
  }

  static EdgeInsets marginPercent(
      double verticalPercent, double horizontalPercent) {
    return EdgeInsets.symmetric(
      vertical: height * verticalPercent,
      horizontal: width * horizontalPercent,
    );
  }

  // Animation Durations
  static Duration duration(double seconds) =>
      Duration(seconds: seconds.toInt());
  static Duration get shortDuration => const Duration(milliseconds: 200);
  static Duration get mediumDuration => const Duration(milliseconds: 400);
  static Duration get longDuration => const Duration(milliseconds: 600);

  // Animation Curve
  static Curve get animationCurve => Curves.easeInOut;
  static Curve get fadeInCurve => Curves.easeIn;

  // Height properties based on screen height
  static double get hScreen => height;
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
  static double get wScreen => width;
  static double get w0 => width * 0.001;
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

  static EdgeInsets get padding => EdgeInsets.all(height * .040);
  static EdgeInsets get paddingSmall => EdgeInsets.all(hScreen * 0.020);
  static EdgeInsets get paddingExtraSmall => EdgeInsets.all(hScreen * 0.008);

  static EdgeInsets get paddingMedium => EdgeInsets.all(hScreen * 0.06);
  static EdgeInsets get paddingLarge => EdgeInsets.all(hScreen * 0.08);

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

  // Margin methods
  static EdgeInsets marginAll(double value) {
    return EdgeInsets.all(value);
  }

  static EdgeInsets get margin => EdgeInsets.all(h1);
  static EdgeInsets get marginSmall => EdgeInsets.all(hScreen * 0.008);
  static EdgeInsets get marginMedium => EdgeInsets.all(hScreen * 0.04);
  static EdgeInsets get marginLarge => EdgeInsets.all(hScreen * 0.06);
  static EdgeInsets get marginExtraSmall => EdgeInsets.all(hScreen * 0.008);

  // Shortcut methods for h1 to h10 as SizedBox
  static SizedBox get hBox => SizedBox(height: h0);

  static SizedBox get h0Box => SizedBox(height: h0);
  static SizedBox get h1Box => SizedBox(height: h1);
  static SizedBox get h2Box => SizedBox(height: h2);
  static SizedBox get h3Box => SizedBox(height: h3);
  static SizedBox get h4Box => SizedBox(height: h4);
  static SizedBox get h5Box => SizedBox(height: h5);
  static SizedBox get h6Box => SizedBox(height: h6);
  static SizedBox get h7Box => SizedBox(height: h7);
  static SizedBox get h8Box => SizedBox(height: h8);
  static SizedBox get h9Box => SizedBox(height: h9);
  static SizedBox get h10Box => SizedBox(height: h10);

  // Shortcut methods for w1 to w10 as SizedBox
  static SizedBox get w1Box => SizedBox(width: w1);
  static SizedBox get w2Box => SizedBox(width: w2);
  static SizedBox get w3Box => SizedBox(width: w3);
  static SizedBox get w4Box => SizedBox(width: w4);
  static SizedBox get w5Box => SizedBox(width: w5);
  static SizedBox get w6Box => SizedBox(width: w6);
  static SizedBox get w7Box => SizedBox(width: w7);
  static SizedBox get w8Box => SizedBox(width: w8);
  static SizedBox get w9Box => SizedBox(width: w9);
  static SizedBox get w10Box => SizedBox(width: w10);

// Circular Container with Inner and Outer Colors and Borders
  static Widget circularContainer({
    required double diameter,
    Color? innerColor, // Inner color
    Color? outerColor, // Outer color
    Color? innerBorderColor, // Inner border color
    Color? outerBorderColor, // Outer border color
    double? outerDiameter, // Optional diameter for the outer circle
    double innerBorderWidth = 0.0, // Inner border width
    double outerBorderWidth = 0.0, // Outer border width
    Widget? child,
  }) {
    return Container(
      width: outerDiameter ?? diameter, // Use outer diameter if provided
      height: outerDiameter ?? diameter,
      decoration: BoxDecoration(
        color: outerColor ?? Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: outerBorderColor ?? Colors.transparent,
          width: outerBorderWidth,
        ),
      ),
      alignment: Alignment.center, // Center the child
      child: Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
          color: innerColor ?? Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: innerBorderColor ?? Colors.transparent,
            width: innerBorderWidth,
          ),
        ),
        child: child,
      ),
    );
  }

  // Print method
  // ANSI escape code for yellow
  static const String yellow = '\x1B[33m';
  static const String reset = '\x1B[0m';

  // Print method with yellow color
  static void print(String message) {
    final formattedMessage = '$yellow message: $message$reset';
    debugPrint(formattedMessage);
  }

  // Trace method
  static void trace(String message) {
    final stackTrace = StackTrace.current
        .toString()
        .split('\n'); // Get the current stack trace
    if (stackTrace.length > 1) {
      // Extract the relevant line for the caller information
      final callerInfo = stackTrace[1].trim();
      final formattedMessage = '$yellow Trace: $message\n$callerInfo$reset';
      debugPrint(formattedMessage);
    } else {
      final formattedMessage =
          '$yellow Trace: $message$reset'; // ANSI code for yellow if no stack trace
      debugPrint(formattedMessage);
    }
  }
}
