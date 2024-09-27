import 'package:block_testing/core/configs/app_colors.dart';
import 'package:flutter/material.dart';

mixin DarkText {
  // Dark Theme Text Styles
  static const TextStyle bodyLargeDark = TextStyle(
    color: AppColors.onPrimaryDark,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle displayLargeDark = TextStyle(
    color: AppColors.primaryDark,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyMediumDark = TextStyle(
    color: AppColors.onPrimaryDark,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodySmallDark = TextStyle(
    color: AppColors.onPrimaryDark,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle titleLargeDark = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.onPrimaryDark,
  );

  static const TextStyle titleMediumDark = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.onPrimaryDark,
  );

  static const TextStyle titleSmallDark = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.onPrimaryDark,
  );

  static const TextStyle displayMediumDark = TextStyle(
    color: AppColors.onPrimaryDark,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
}
