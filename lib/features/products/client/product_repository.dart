import 'dart:developer';
import 'package:block_testing/services/api/const_api.dart';
import 'package:block_testing/features/products/model/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductRepository {
  Future<List<Product>> fetchPostsProducts() async {
    final response = await http.get(Uri.parse(ConstApi.productsUrl));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      log('Products response: ${response.body}');
      return (jsonData as List)
          .map((jsonProduct) => Product.fromJson(jsonProduct))
          .toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
