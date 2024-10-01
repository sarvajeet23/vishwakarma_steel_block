import 'dart:convert';
import '../model/comments.dart';
import 'package:http/http.dart' as http;
import '../../../data/api/const_api.dart';

class CommentRepository {
  Future<List<Comments>> fetchCommentsProducts() async {
    try {
      final response = await http.get(Uri.parse(ConstApi.commentsUrl));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
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
