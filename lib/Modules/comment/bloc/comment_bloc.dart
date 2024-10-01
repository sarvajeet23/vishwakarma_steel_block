import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'comment_event.dart';
import 'comment_state.dart';
import '../client/comment_repository.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentRepository commentRepository;

  CommentsBloc({required this.commentRepository}) : super(CommentsInitial()) {
    on<FetchComments>((event, emit) async {
      emit(CommentsLoading());
      try {
        final comments = await commentRepository.fetchCommentsProducts();
        log(comments.toString());
        emit(CommentsLoaded(comments: comments));
      } catch (e) {
        emit(CommentsError(message: e.toString()));
      }
    });
  }
}
