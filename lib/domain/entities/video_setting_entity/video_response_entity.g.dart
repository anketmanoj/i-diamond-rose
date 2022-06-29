// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoResponseEntity _$_$_VideoResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _$_VideoResponseEntity(
    id: json['id'] as int? ?? 0,
    videoUrl: json['videoUrl'] as String?,
    thumbnailUrl: json['thumbnailUrl'] as String?,
    videoCaption: json['videoCaption'] as String? ?? '',
    videoDesc: json['videoDesc'] as String? ?? '',
    likeCount: json['likeCount'] as int?,
    commentCount: json['commentCount'] as int?,
    ownerId: json['ownerId'] as int? ?? 0,
    deleteFlag: json['deleteFlag'] as bool?,
    createBy: json['createBy'] as int?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updateBy: json['updateBy'] as int?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_VideoResponseEntityToJson(
        _$_VideoResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'videoCaption': instance.videoCaption,
      'videoDesc': instance.videoDesc,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'ownerId': instance.ownerId,
      'deleteFlag': instance.deleteFlag,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
