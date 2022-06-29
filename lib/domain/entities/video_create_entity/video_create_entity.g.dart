// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_create_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoCreateEntity _$_$_VideoCreateEntityFromJson(Map<String, dynamic> json) {
  return _$_VideoCreateEntity(
    id: json['id'] as int?,
    videoUrl: json['videoUrl'] as String? ?? '',
    thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
    downloadKey: json['downloadKey'] as String? ?? '',
    thumbnailDownloadKey: json['thumbnailDownloadKey'] ?? '',
    videoCaption: json['videoCaption'] ?? '',
    videoDesc: json['videoDesc'] ?? '',
    likeCount: json['likeCount'] as int? ?? 0,
    commentCount: json['commentCount'] as int? ?? 0,
    ownerId: json['ownerId'] as int?,
    deleteFlag: json['deleteFlag'] as bool? ?? false,
    createBy: json['createBy'] as int?,
    createdAt: json['createdAt'] ?? '',
    updateBy: json['updateBy'] as int?,
    updatedAt: json['updatedAt'] ?? '',
    selected: json['selected'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_VideoCreateEntityToJson(
        _$_VideoCreateEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'downloadKey': instance.downloadKey,
      'thumbnailDownloadKey': instance.thumbnailDownloadKey,
      'videoCaption': instance.videoCaption,
      'videoDesc': instance.videoDesc,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'ownerId': instance.ownerId,
      'deleteFlag': instance.deleteFlag,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt,
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt,
      'selected': instance.selected,
    };
