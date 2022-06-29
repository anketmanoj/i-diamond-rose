// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_video_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentVideoEntity _$_$_CommentVideoEntityFromJson(
    Map<String, dynamic> json) {
  return _$_CommentVideoEntity(
    id: json['id'] as int? ?? 0,
    videoId: json['videoId'] as int?,
    parentCommentId: json['parentCommentId'] as int?,
    commentVideo: json['commentVideo'] as String?,
    replies: json['replies'] as int?,
    userId: json['userId'] as int?,
    ownerAvatar: json['ownerAvatar'] as String?,
    ownerUserName: json['ownerUserName'] as String?,
    ownerDisplayName: json['ownerDisplayName'] as String?,
    isCommentAuthor: json['isCommentAuthor'] as bool?,
    isSending: json['isSending'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_CommentVideoEntityToJson(
        _$_CommentVideoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'parentCommentId': instance.parentCommentId,
      'commentVideo': instance.commentVideo,
      'replies': instance.replies,
      'userId': instance.userId,
      'ownerAvatar': instance.ownerAvatar,
      'ownerUserName': instance.ownerUserName,
      'ownerDisplayName': instance.ownerDisplayName,
      'isCommentAuthor': instance.isCommentAuthor,
      'isSending': instance.isSending,
    };
