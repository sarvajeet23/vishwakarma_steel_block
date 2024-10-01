import 'dart:async';

import 'package:block_testing/core/services/navigation_service.dart';
import 'package:block_testing/Modules/help/model/person_model.dart';
import 'package:block_testing/router/routes_managements.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPage extends StatefulWidget {
  HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  List<PersonModel> productList = [
    PersonModel(name: "nitu"),
    PersonModel(name: "shiboo"),
    PersonModel(name: "shiboo"),
    PersonModel(name: "shiboo"),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var data = [
      {
        "name": "shiboo",
        "address": "mukesh",
      },
      {
        "name": null,
        "address": "mukesh",
      },
      {
        "name": "baba",
        "address": "mukesh",
      },
    ];
    for (var i = 0; i < data.length; i++) {
      productList.add(PersonModel.fromJson(data[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("helps"),
        actions: [
          TextButton(
              onPressed: () {
                RoutesManagements.goToProductPage();
              },
              child: const Text("product")),
          TextButton(
              onPressed: () {
                RoutesManagements.goToCommentsPage();
              },
              child: const Text("comments")),
          TextButton(
              onPressed: () {
                navToPush(
                  MyWidget(),
                );
              },
              child: Text("check"))
        ],
      ),
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            var model = productList[index];
            return ListTile(
              title: Text(model.name!),
            );
          }),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("data"),
      ),
    );
  }
}
