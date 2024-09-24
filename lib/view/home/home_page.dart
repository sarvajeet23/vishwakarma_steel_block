import 'package:block_testing/utility/app_dime.dart';
import 'package:block_testing/utility/app_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> images = [
    "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1672116453187-3aa64afe04ad?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Dime.paddingOnly(left: Dime.h1, right: Dime.h1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning",
                style: textTheme.displayLarge,
              ),
              Text(
                "Welcome Back",
                style: textTheme.bodySmall,
              ),
              Row(
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
              ),
              Dime.h1Box,
              SizedBox(
                height: Dime.h10 * 2,
                child: images.isNotEmpty
                    ? PageView.builder(
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: Dime.padding,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: NetworkImage(images[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : const Center(child: Text("No images available")),
              ),
              Dime.h1Box,
            ],
          ),
        ),
      ),
    );
  }
}
