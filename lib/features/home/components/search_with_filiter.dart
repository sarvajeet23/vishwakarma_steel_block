import 'package:block_testing/core/configs/app_dime.dart';
import 'package:block_testing/core/configs/app_style.dart';
import 'package:flutter/material.dart';

class SearchWithFiliter extends StatelessWidget {
  const SearchWithFiliter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: AppStyle.decoration,
            height: Dime.h4,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                contentPadding: EdgeInsets.all(8),
              ),
            ),
          ),
        ),
        Dime.w1Box,
        Container(
          height: Dime.h4,
          width: Dime.h4,
          decoration: AppStyle.decoration,
          child: const Icon(Icons.filter_list),
        ),
      ],
    );
  }
}
