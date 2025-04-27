import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/configs/app_dime.dart';
import '../tab_bar_page.dart/arrow_tab_page.dart';
import 'components/image_with_indicator.dart';
import 'components/search_with_filiter.dart';
import 'components/title_with_label.dart';

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
      backgroundColor:
          const Color.fromARGB(255, 218, 215, 215).withOpacity(0.1),
      body: SafeArea(
        child: Padding(
          padding:
              Dime.paddingOnly(left: Dime.h1, right: Dime.h1, top: Dime.h2),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good Morning", // Use localization
                      style: textTheme.bodyLarge,
                    ),
                    InkWell(
                      onTap: () => Get.back(),
                      child: const CircleAvatar(radius: 25),
                    )
                  ],
                ),
                Text("Welcome Back", style: textTheme.bodySmall),
                const SearchWithFiliter(),
                Dime.h1Box,
                ImageWithIndicator(
                  height: Dime.h10 * 5,
                  image: images,
                ),
                Dime.h5Box,
                const TitleWithLabel(),
                Dime.h5Box,
                SizedBox(
                  height: Dime.h10 * 3,
                  width: Dime.wScreen,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: Dime.h1 / 2),
                        width: Dime.h10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dime.h1),
                          image: DecorationImage(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Dime.h5Box,
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const CustomTabBarPage(),
                          ),
                        );
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
                Dime.h1Box,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
