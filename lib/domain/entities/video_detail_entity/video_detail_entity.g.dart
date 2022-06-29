// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoDetailEntity _$_$_VideoDetailEntityFromJson(Map<String, dynamic> json) {
  return _$_VideoDetailEntity(
    userId: json['userId'] as int? ?? 0,
    avatarUrl: json['avatarUrl'] as String? ?? '',
    displayName: json['displayName'] as String? ?? '',
    videoItemDetail: json['videoItemDetail'] == null
        ? null
        : VideoItemDetailEntity.fromJson(
            json['videoItemDetail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VideoDetailEntityToJson(
        _$_VideoDetailEntity instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'avatarUrl': instance.avatarUrl,
      'displayName': instance.displayName,
      'videoItemDetail': instance.videoItemDetail,
    };
