part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.loading() = _Loading;
  const factory CommentState.loaded(List<Comments> comments) = _Loaded;
  const factory CommentState.error(String message) = _Error;
}
