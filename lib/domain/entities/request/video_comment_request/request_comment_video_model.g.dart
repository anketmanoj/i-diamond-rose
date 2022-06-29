// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_comment_video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCommentVideoModel _$_$_RequestCommentVideoModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestCommentVideoModel(
    type: json['type'] as int?,
    videoId: json['videoId'] as int?,
    page: json['page'] as int?,
    size: json['size'] as int?,
  );
}

Map<String, dynamic> _$_$_RequestCommentVideoModelToJson(
        _$_RequestCommentVideoModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'videoId': instance.videoId,
      'page': instance.page,
      'size': instance.size,
    };
