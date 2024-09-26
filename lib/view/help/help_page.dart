import 'package:block_testing/view/comment/comments_page.dart';
import 'package:block_testing/view/help/person_model.dart';
import 'package:block_testing/view/products/product_screen.dart';
import 'package:flutter/material.dart';

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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductScreen()));
              },
              child: const Text("product")),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (contex) => const CommentsPage()));
              },
              child: const Text("comments"))
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
