import 'package:flutter/material.dart';
import 'package:vishwakarama_steel_bloc/core/configs/app_dime.dart';
import 'package:vishwakarama_steel_bloc/router/routes_managements.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key}) {
    Future.delayed(const Duration(seconds: 3), () {
      RoutesManagements.goToLoginPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Dime.h10Box,
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

void aSprint(Object? object) {
  String line = "$object";

  // ANSI escape codes for yellow color
  String yellowColor = '\x1b[33m';
  String resetColor = '\x1b[0m';

  // Combine the color code with the message
  String coloredLine = '$yellowColor$line$resetColor';

  // Print to the console
  print(coloredLine); // Fix recursive call
}
