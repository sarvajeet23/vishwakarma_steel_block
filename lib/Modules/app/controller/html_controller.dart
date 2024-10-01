// controllers/package_controller.dart
import 'package:block_testing/Modules/app/model/html_model.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class HTMLController extends GetxController {
  var packages = <HTMLModel>[];
  var isLoading = true;
  var errorMessage = '';

  @override
  void onInit() {
    fetchPackages();
    super.onInit();
    update();
  }

  Future<void> fetchPackages() async {
    try {
      isLoading = true;

      final String response =
          await rootBundle.loadString('assets/html_api.json');

      Map<String, dynamic> jsonResponse = json.decode(response);
      List<dynamic> packagesList = jsonResponse['packages'];
      packages = packagesList.map((data) => HTMLModel.fromJson(data)).toList();
    } catch (e) {
      errorMessage = 'Error: $e';
    } finally {
      isLoading = false;
    }
    update();
  }
}
