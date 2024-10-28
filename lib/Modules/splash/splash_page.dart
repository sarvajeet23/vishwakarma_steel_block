import 'package:flutter/material.dart';
import 'package:vishwakarama_steel_bloc/router/routes_managements.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key}) {
    Future.delayed(
        const Duration(seconds: 3), () => RoutesManagements.goToLoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
