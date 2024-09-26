import 'package:block_testing/configs/app_colors.dart';
import 'package:flutter/material.dart';

mixin LightText {
  // Light Theme Text Styles
  static const TextStyle bodyLargeLight = TextStyle(
    color: AppColors.onSurfaceLight,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle displayLargeLight = TextStyle(
    color: AppColors.primaryLight,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyMediumLight = TextStyle(
    color: AppColors.onSurfaceLight,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodySmallLight = TextStyle(
    color: AppColors.onSurfaceLight,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle titleLargeLight = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.onPrimaryLight,
  );

  static const TextStyle titleMediumLight = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.onPrimaryLight,
  );

  static const TextStyle titleSmallLight = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.onPrimaryLight,
  );

  static const TextStyle displayMediumLight = TextStyle(
    color: AppColors.onSurfaceLight,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
}
