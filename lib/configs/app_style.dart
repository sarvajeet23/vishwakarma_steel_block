import 'package:block_testing/configs/mixin/dark_text.dart';
import 'package:block_testing/configs/mixin/light_text.dart';
import 'package:flutter/material.dart';

abstract class AppStyle with LightText, DarkText {
  // Common decoration
  static const BoxDecoration decoration = BoxDecoration(
    color: Color.fromARGB(255, 222, 219, 210),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static Container boxDecoration(double height, double width) {
    return Container(
      decoration: decoration,
      width: width,
      height: height,
    );
  }

  // TextTheme for Light and Dark Modes
  static TextTheme textTheme(bool isLight) {
    return TextTheme(
      titleSmall: isLight ? LightText.titleSmallLight : DarkText.titleSmallDark,
      titleMedium:
          isLight ? LightText.titleMediumLight : DarkText.titleMediumDark,
      titleLarge: isLight ? LightText.titleLargeLight : DarkText.titleLargeDark,
      bodyMedium: isLight ? LightText.bodyMediumLight : DarkText.bodyMediumDark,
      bodySmall: isLight ? LightText.bodySmallLight : DarkText.bodySmallDark,
      bodyLarge: isLight ? LightText.bodyLargeLight : DarkText.bodyLargeDark,
      displayLarge:
          isLight ? LightText.displayLargeLight : DarkText.displayLargeDark,
      displayMedium:
          isLight ? LightText.displayMediumLight : DarkText.displayMediumDark,
    );
  }
}
