// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_dto_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoDTOEntity _$_$_VideoDTOEntityFromJson(Map<String, dynamic> json) {
  return _$_VideoDTOEntity(
    id: json['id'] as int? ?? 0,
    videoUrl: json['videoUrl'] as String?,
    downloadKey: json['downloadKey'] as String?,
    thumbnailUrl: json['thumbnailUrl'] as String?,
    thumbnailDownloadKey: json['thumbnailDownloadKey'] as String?,
    videoCaption: json['videoCaption'] as String?,
    videoDesc: json['videoDesc'] as String?,
    isSettingComplete: json['isSettingComplete'] as bool?,
    likeCount: json['likeCount'] as int? ?? 0,
    commentCount: json['commentCount'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_VideoDTOEntityToJson(_$_VideoDTOEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoUrl': instance.videoUrl,
      'downloadKey': instance.downloadKey,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailDownloadKey': instance.thumbnailDownloadKey,
      'videoCaption': instance.videoCaption,
      'videoDesc': instance.videoDesc,
      'isSettingComplete': instance.isSettingComplete,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
    };
