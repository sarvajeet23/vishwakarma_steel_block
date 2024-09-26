import 'package:block_testing/configs/app_colors.dart';
import 'package:flutter/material.dart';

mixin Dark {
  static ColorScheme colorScheme() {
    return const ColorScheme.dark(
      primary: AppColors.primaryDarkScheme,
      secondary: AppColors.secondaryDark,
      surface: AppColors.surfaceDark,
      onPrimary: AppColors.onPrimaryDark,
      onSecondary: AppColors.onPrimaryDark,
      onSurface: AppColors.onPrimaryDark,
    );
  }

  static AppBarTheme appBar() {
    return const AppBarTheme(
      backgroundColor: AppColors.appBarBackgroundDark,
      foregroundColor: AppColors.onPrimaryDark,
    );
  }

  static ButtonThemeData buttonThemeData() {
    return const ButtonThemeData(
      buttonColor: AppColors.surfaceDark,
      textTheme: ButtonTextTheme.primary,
    );
  }
}
