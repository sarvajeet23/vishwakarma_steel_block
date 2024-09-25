import 'dart:developer';

import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> nums = [1, 2, 2, 4, 5, 4];
    List<int> uniqueNums = [];

    // Remove duplicates manually
    for (int item in nums) {
      bool isDuplicate = false;
      for (int uniqueItem in uniqueNums) {
        if (item == uniqueItem) {
          isDuplicate = true;
          break;
        }
      }
      if (!isDuplicate) {
        uniqueNums.add(item);
      }
    }

    // Sort the list using insertion sort
    for (int i = 1; i < uniqueNums.length; i++) {
      int key = uniqueNums[i];
      int j = i - 1;

      // Move elements that are greater than key to one position ahead
      while (j >= 0 && uniqueNums[j] > key) {
        uniqueNums[j + 1] = uniqueNums[j];
        j = j - 1;
      }
      uniqueNums[j + 1] = key;
    }

    // Log the final sorted list without duplicates
    log("Final sorted list: ${uniqueNums.toString()}");

    return const Scaffold(
      body: Center(child: Text("App")),
    );
  }
}
