import 'package:bloc/bloc.dart';
import 'package:block_testing/features/comment/bloc/comment_event.dart';
import 'package:block_testing/features/comment/bloc/comment_state.dart';
import 'package:block_testing/features/comment/client/comment_repository.dart';


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
