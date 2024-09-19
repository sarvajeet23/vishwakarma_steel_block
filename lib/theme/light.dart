// ignore_for_file: prefer_const_constructors

import 'package:block_testing/utility/app_colors.dart';
import 'package:flutter/material.dart';

mixin Light {
  static ColorScheme colorScheme() {
    return const ColorScheme.light(
      primary: AppColors.primaryLightScheme,
      onPrimary: AppColors.onPrimaryLight, 
      onSecondary: AppColors.onSurfaceLight, 
      onSurface: AppColors.onSurfaceLight,
      error: AppColors.errorLight,
      surface: AppColors.onPrimaryLight,
    );
  }

  static appBar() {
    return const AppBarTheme(
        backgroundColor:
            AppColors.secondaryLight,
        foregroundColor: AppColors.onPrimaryLight 
        );
  }

  static buttonThemeData() {
    return const ButtonThemeData(
        buttonColor: Colors.black, textTheme: ButtonTextTheme.primary);
  }
}
