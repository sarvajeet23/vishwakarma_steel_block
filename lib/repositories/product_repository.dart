import 'dart:developer';
import 'package:block_testing/data/const_api.dart';
import 'package:block_testing/models/comments.dart';
import 'package:block_testing/models/product.dart';
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

  Future<List<Comments>> fetchCommentsProducts() async {
    final response = await http.get(Uri.parse(ConstApi.commentsUrl));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      log('Comments response: ${response.body}');
      return (jsonData as List)
          .map((jsonComment) => Comments.fromJson(jsonComment))
          .toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }
}
