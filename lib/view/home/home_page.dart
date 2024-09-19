import 'package:block_testing/utility/app_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Good Moring ",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(color: Colors.black45),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: AppStyle.decoration,
                        height: 40,
                        width: 200,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefix: Icon(Icons.search)),
                        )),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: AppStyle.decoration,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
