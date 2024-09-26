import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments.g.dart';
part 'comments.freezed.dart';

@Freezed()
class Comments with _$Comments {
  factory Comments({
    //@Default() is use to set default value. like null check soluction.
    @Default(0) final int? postId,
    final int? id,
    final String? name,
    final String? email,
    final String? body,
  }) = _Comments;

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}
