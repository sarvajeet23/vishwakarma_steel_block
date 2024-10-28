import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwakarama_steel_bloc/auth/controller/sing_up_controller.dart';
import 'package:vishwakarama_steel_bloc/core/configs/app_dime.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingUpController>(
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: Dime.paddingSmall,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 80,
                  ),
                  Dime.h5Box,
                  TextFormField(
                    onChanged: controller.userName,
                    decoration: InputDecoration(
                      label: const Text("Name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Dime.h2Box,
                  TextFormField(
                    onChanged: controller.updateMobile,
                    decoration: InputDecoration(
                      label: const Text("Mobile No."),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Dime.h2Box,
                  TextFormField(
                    onChanged: controller.updateEmail,
                    decoration: InputDecoration(
                      label: const Text("Email"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Dime.h2Box,
                  TextFormField(
                    obscureText: true,
                    onChanged: controller.updatePassword,
                    decoration: InputDecoration(
                      label: const Text("Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Dime.h2Box,
                  TextFormField(
                    obscureText: true,
                    onChanged: controller.updateConfirmPassword,
                    decoration: InputDecoration(
                      label: const Text("Confirm Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Dime.h5Box,
                  ElevatedButton(
                    onPressed: () => controller.registerUser(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Register"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
