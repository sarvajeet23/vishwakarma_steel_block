import 'package:block_testing/theme/dark.dart';
import 'package:block_testing/theme/light.dart';
import 'package:block_testing/utility/app_colors.dart';
import 'package:block_testing/utility/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme with Light, Dark {
  // Light Theme Configuration
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryLight,
    canvasColor: AppColors.surfaceLight,
    cardColor: AppColors.surfaceLight,
    disabledColor: AppColors.grey400,
    dividerColor: AppColors.grey,
    hintColor: AppColors.grey,
    focusColor: AppColors.primaryLight.withOpacity(0.12),
    hoverColor: AppColors.primaryLight.withOpacity(0.04),
    highlightColor: AppColors.primaryLight.withOpacity(0.1),
    primaryColorDark: AppColors.primaryLight,
    primaryColorLight: AppColors.secondaryLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    indicatorColor: AppColors.primaryLight,
    shadowColor: Colors.black.withOpacity(0.25),
    unselectedWidgetColor: Colors.grey,
    secondaryHeaderColor: AppColors.secondaryLight,
    splashColor: AppColors.primaryLight.withOpacity(0.12),
    colorScheme: Light.colorScheme(),
    appBarTheme: Light.appBar(),
    buttonTheme: Light.buttonThemeData(),
    textTheme: AppStyle.textTheme(true),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  // Dark Theme Configuration
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    canvasColor: AppColors.onPrimaryDark,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
    appBarTheme: Dark.appBar(),
    colorScheme: Dark.colorScheme(),
    buttonTheme: Dark.buttonThemeData(),
    textTheme: AppStyle.textTheme(false),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
