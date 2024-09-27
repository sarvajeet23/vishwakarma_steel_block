import 'package:block_testing/features/products/bloc/product_bloc.dart';
import 'package:block_testing/features/products/bloc/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

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
          if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductLoaded) {
            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                final product = state.products[index];
                return ListTile(
                  title: Text(product.title ?? 'title'),
                  subtitle: Text(product.body ?? 'body'),
                );
              },
            );
          } else if (state is ProductError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
