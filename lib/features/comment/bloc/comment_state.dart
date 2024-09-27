import 'package:equatable/equatable.dart';
import 'package:block_testing/features/comment/model/comments.dart';

abstract class CommentsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CommentsInitial extends CommentsState {}

class CommentsLoading extends CommentsState {}

class CommentsLoaded extends CommentsState {
  final List<Comments> comments;

  CommentsLoaded({required this.comments});

  @override
  List<Object?> get props => [comments];
}

class CommentsError extends CommentsState {
  final String? message;

  CommentsError({this.message});

  @override
  List<Object?> get props => [message];
}
