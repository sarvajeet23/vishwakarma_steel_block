import 'package:get/get.dart';
import 'package:vishwakarama_steel_bloc/router/routes_managements.dart';

class LoginController extends GetxController {
  bool ischeck = false;
  String email = "";
  String password = "";

  void rememberPass(bool value) {
    ischeck = value;
    update();
  }

  void updateEmail(String value) {
    email = value;
    update();
  }

  void updatePassword(String value) {
    password = value;
  }

  void goToDashboard() {
    if (email.isNotEmpty && password.isNotEmpty) {
      RoutesManagements.goToDashboard();
    } else {
      Get.snackbar("Error", "Please fill all fields");
    }
  }
}
