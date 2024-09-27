import 'dart:convert';
import 'dart:developer';
import 'package:block_testing/services/api/const_api.dart';
import 'package:block_testing/features/comment/model/comments.dart';
import 'package:http/http.dart' as http;

class CommentRepository {
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
