import 'dart:developer';
import 'package:dio/dio.dart';
import '../model/comments.dart';
import '../../../data/api/const_api.dart';

class CommentRepository {
  final Dio _dio = Dio();

  Future<List<Comments>> fetchCommentsProducts() async {
    try {
      final response = await _dio.get(ConstApi.commentsUrl);

      if (response.statusCode == 200) {
        final jsonData = response.data;

        log("Product Response::$jsonData");

        return (jsonData as List)
            .map((jsonComment) => Comments.fromJson(jsonComment))
            .toList();
      } else {
        throw Exception('Failed to load comments');
      }
    } catch (e) {
      throw Exception('Error fetching comments: $e');
    }
  }
}
