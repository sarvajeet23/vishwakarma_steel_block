import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../model/movie.dart';
 

class MovieRepository {
  Future<List<Movie>> fetchPopularMovies() async {
    final String response = await rootBundle.loadString('assets/movies.json');
    final List<dynamic> jsonList = json.decode(response);
    return jsonList.map((json) => Movie.fromJson(json)).toList();
  }
}
