import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_video_entity.freezed.dart';
part 'comment_video_entity.g.dart';

@freezed
class CommentVideoEntity with _$CommentVideoEntity {
  const factory CommentVideoEntity({
    @Default(0) int id,
    int? videoId,
    int? parentCommentId,
    String? commentVideo,
    int? replies, 
    int? userId,
    String? ownerAvatar,
    String? ownerUserName,
    String? ownerDisplayName,
    bool? isCommentAuthor,
    @Default(false) bool isSending

  }) = _CommentVideoEntity;

  factory CommentVideoEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentVideoEntityFromJson(json);
}
