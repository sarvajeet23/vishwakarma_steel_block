import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:vishwakarama_steel_bloc/Modules/products/bloc/product_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).canvasColor,
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Get.theme.focusColor,
              foregroundColor: Get.theme.dividerColor,
            ),
            child: const Text("data"),
          )
        ],
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(
                child: CircularProgressIndicator()), 
            loaded: (products) {
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text(product.id.toString())),
                    title: Text(product.title ?? 'Title'),
                    subtitle: Text('Price: ${product.body ?? "N/A"}'),
                  );
                },
              );
            },
            error: (message) => Center(child: Text("Error: $message")),
          );
        },
      ),
    );
  }
}
