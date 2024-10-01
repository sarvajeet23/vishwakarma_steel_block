import 'package:block_testing/core/configs/app_dime.dart';
import 'package:block_testing/Modules/home/components/image_with_indicator.dart';
import 'package:block_testing/Modules/home/components/search_with_filiter.dart';
import 'package:block_testing/Modules/home/components/title_with_label.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> images = [
    "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1672116453187-3aa64afe04ad?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://media.istockphoto.com/id/1977348709/photo/laughing-young-businesswoman-talking-with-colleagues-in-an-office-hallway.jpg?s=2048x2048&w=is&k=20&c=saM4I2l9GGlJKHAL0ayXMqL4GphBPvuXkCh6qd3yFEU=",
    "https://plus.unsplash.com/premium_photo-1687382112658-87ba9815f32e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
              const SearchWithFiliter(),
              Dime.h1Box,
              const ImageWithIndicator(),
              const TitleWithLabel(),
              SizedBox(
                height: Dime.h10,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dime.h1)),
                    ),
                  ],
                ),
              ),
              Dime.h1Box,
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 2,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => const Reels(),
                            ));
                      },
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
                ),
              ),
              Dime.h1Box,
            ],
          ),
        ),
      ),
    );
  }
}

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(),
        )
      ],
    ));
  }
}
