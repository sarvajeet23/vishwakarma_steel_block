import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwakarama_steel_bloc/auth/controller/login_controller.dart';
import 'package:vishwakarama_steel_bloc/core/configs/app_dime.dart';
import 'package:vishwakarama_steel_bloc/router/routes_managements.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        body: Padding(
          padding: Dime.paddingAll(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: controller.updateEmail,
                decoration: InputDecoration(
                    label: const Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              Dime.h2Box,
              TextFormField(
                onChanged: controller.updatePassword,
                decoration: InputDecoration(
                    label: const Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              Dime.h5Box,
              Row(
                children: [
                  Checkbox(
                      value: controller.ischeck,
                      onChanged: (bool? value) {
                        controller.rememberPass(value ?? false);
                      }),
                  const Text("Remember"),
                  const Spacer(),
                  const Text("Don't have an account?"),
                  Dime.w1Box,
                  InkWell(
                    onTap: () {
                      RoutesManagements.goToSingUpPage();
                    },
                    child: const Text(
                      "Sing Up",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              Dime.h5Box,
              ElevatedButton(
                onPressed: controller.goToDashboard,
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.blue,
                    // foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
