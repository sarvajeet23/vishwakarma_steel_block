import 'package:flutter_bloc/flutter_bloc.dart';
 
import '../client/movie_repository.dart';
import '../client/search_repository.dart';
import 'movie_event.dart';
import 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository movieRepository;
  final SearchRepository searchRepository;

  MovieBloc({required this.movieRepository, required this.searchRepository}) : super(MovieInitial()) {
    on<FetchPopularMoviesEvent>((event, emit) async {
      emit(MovieLoading());
      try {
        final movies = await movieRepository.fetchPopularMovies();
        emit(MovieLoaded(movies: movies));
      } catch (e) {
        emit(MovieError(error: e.toString()));
      }
    });

    on<SearchMoviesEvent>((event, emit) async {
      emit(MovieLoading());
      try {
        final movies = await searchRepository.searchMovies(event.query);
        emit(MovieLoaded(movies: movies));
      } catch (e) {
        emit(MovieError(error: e.toString()));
      }
    });
  }
}
