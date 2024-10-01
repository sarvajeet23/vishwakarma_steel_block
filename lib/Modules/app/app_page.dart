import 'package:block_testing/router/routes_managements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'controller/html_controller.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Details'),
        actions: [
          TextButton(
              onPressed: () {
                RoutesManagements.goToMoviePage();
              },
              child: Text("Movies"))
        ],
      ),
      body: GetBuilder<HTMLController>(builder: (controller) {
        if (controller.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (controller.errorMessage.isNotEmpty) {
          return Center(child: Text(controller.errorMessage));
        } else {
          return ListView.builder(
            itemCount: controller.packages.length,
            itemBuilder: (context, index) {
              final package = controller.packages[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('  Inclusions:',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Html(data: package.packageInclusions),
                      const SizedBox(height: 8),
                      const Text('  Exclusions:',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Html(data: package.packageExclusions),
                      const SizedBox(height: 8),
                      const Text('  Must Know:',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Html(data: package.packageMustKnows),
                    ],
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
