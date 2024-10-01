import '../model/movie.dart';
import 'movie_repository.dart';

class SearchRepository {
  final MovieRepository movieRepository;

  SearchRepository(this.movieRepository);

  Future<List<Movie>> searchMovies(String query) async {
    final movies = await movieRepository.fetchPopularMovies();
    return movies
        .where(
            (movie) => movie.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
