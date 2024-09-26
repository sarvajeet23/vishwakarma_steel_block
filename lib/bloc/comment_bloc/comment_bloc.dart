import 'package:bloc/bloc.dart';
import 'package:block_testing/bloc/comment_bloc/comment_event.dart';
import 'package:block_testing/bloc/comment_bloc/comment_state.dart';
import 'package:block_testing/data/repositories/comment_repository.dart';


class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentRepository commentRepository;

  CommentsBloc({required this.commentRepository}) : super(CommentsInitial()) {
    on<FetchComments>((event, emit) async {
      emit(CommentsLoading());
      try {
        final comments = await commentRepository.fetchCommentsProducts();
        emit(CommentsLoaded(comments: comments));
      } catch (e) {
        emit(CommentsError(message: e.toString()));
      }
    });
  }
}
