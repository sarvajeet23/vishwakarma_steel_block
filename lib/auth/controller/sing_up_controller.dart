import 'package:get/get.dart';
import 'package:vishwakarama_steel_bloc/router/routes_managements.dart';

class SingUpController extends GetxController {
  String name = "";
  String mobileNo = "";
  String email = "";
  String password = "";
  String confirmPassword = "";

  void registerUser() {
    if (name.isEmpty ||
        mobileNo.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      Get.snackbar("Error", "Please fill in all fields.");
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar("Error", "Passwords do not match.");
      return;
    }

    RoutesManagements.goToLoginPage();
  }

  void userName(String value) {
    name = value;
    update();
  }

  void updateMobile(String value) {
    mobileNo = value;
    update();
  }

  void updateEmail(String value) {
    email = value;
    update();
  }

  void updatePassword(String value) {
    password = value;
    update();
  }

  void updateConfirmPassword(String value) {
    confirmPassword = value;
    update();
  }
}
