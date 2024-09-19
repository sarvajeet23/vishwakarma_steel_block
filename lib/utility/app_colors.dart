import 'package:flutter/material.dart';

class AppColors {
  // Basic Colors
  static const Color grey = Colors.grey;
  static const Color blue = Colors.blue;
  static const Color blueAccent = Colors.blueAccent;

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color indigo = Colors.indigo;
  static final Color? grey400 = Colors.grey[400];
  static const Color blueGrey800 = Color(0xFF37474F);

  static const Color blueGrey900 = Color(0xFF263238);

  // Light Mode Colors
  static const Color primaryLight = blue;
  static const Color onPrimaryLight = white;
  static const Color secondaryLight = blueAccent;
  static const Color surfaceLight = white;
  static const Color onSurfaceLight = black;
  static const Color backgroundLight = white;
  static const Color errorLight = Colors.red;
  static const Color primaryLightScheme = indigo;

  // Dark Mode Colors
  static const Color primaryDark = blueGrey900;
  static const Color primaryDarkScheme = indigo;
  static const Color secondaryDark = Colors.blueAccent;
  static const Color scaffoldBackgroundDark = black;
  static const Color surfaceDark = blueGrey800;
  static const Color onPrimaryDark = white;
  static const Color appBarBackgroundDark = blueGrey900;
}
