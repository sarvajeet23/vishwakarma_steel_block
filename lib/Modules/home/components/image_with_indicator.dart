import 'package:block_testing/core/configs/app_colors.dart';
import 'package:block_testing/core/configs/app_dime.dart';
import 'package:flutter/material.dart';

class ImageWithIndicator extends StatelessWidget {
  const ImageWithIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dime.wScreen,
      height: Dime.h10 * 2,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.blue),
          borderRadius: BorderRadius.circular(Dime.h1 * 1.1)),
    );
  }
}
