abstract class MovieEvent {}

class FetchPopularMoviesEvent extends MovieEvent {}

class SearchMoviesEvent extends MovieEvent {
  final String query;

  SearchMoviesEvent({required this.query});
}
