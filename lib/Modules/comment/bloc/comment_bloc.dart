import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../client/comment_repository.dart';
import '../model/comments.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final CommentRepository _commentRepository;

  CommentBloc(this._commentRepository) : super(const CommentState.initial()) {
    on<CommentEvent>((event, emit) async {
      if (event is FetchData) {
        emit(const CommentState.loading());
        try {
          final List<Comments> comments =
              await _commentRepository.fetchCommentsProducts();
          emit(CommentState.loaded(comments));
        } catch (e) {
          emit(CommentState.error(e.toString()));
        }
      }
    });
  }
}
