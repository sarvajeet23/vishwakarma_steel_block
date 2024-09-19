import 'package:bloc/bloc.dart';
import 'package:block_testing/repositories/product_repository.dart';
import 'package:block_testing/bloc/comment_bloc/comment_event.dart';
import 'package:block_testing/bloc/comment_bloc/comment_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final ProductRepository productRepository;

  CommentsBloc({required this.productRepository}) : super(CommentsInitial()) {
    on<FetchComments>((event, emit) async {
      emit(CommentsLoading());
      try {
        final comments = await productRepository.fetchCommentsProducts();
        emit(CommentsLoaded(comments: comments));
      } catch (e) {
        emit(CommentsError(message: e.toString()));
      }
    });
  }
}
