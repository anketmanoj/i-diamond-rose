// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_item_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoItemDetailEntity _$_$_VideoItemDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _$_VideoItemDetailEntity(
    id: json['id'] as int? ?? 0,
    videoUrl: json['videoUrl'] as String? ?? '',
    videoUID: json['videoUID'] as String? ?? '',
    videoThumbnail: json['videoThumbnail'] as String? ?? '',
    videoCaption: json['videoCaption'] as String? ?? '',
    videoDesc: json['videoDesc'] as String? ?? '',
    ownerId: json['ownerId'] as int? ?? 0,
    videoSettingItem: json['videoSettingItem'] == null
        ? null
        : VideoSettingItemEntity.fromJson(
            json['videoSettingItem'] as Map<String, dynamic>),
    wkVideoId: json['wkVideoId'] as int? ?? 0,
    listItem: (json['listItem'] as List<dynamic>?)
        ?.map((e) => ItemMaterialEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_VideoItemDetailEntityToJson(
        _$_VideoItemDetailEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoUrl': instance.videoUrl,
      'videoUID': instance.videoUID,
      'videoThumbnail': instance.videoThumbnail,
      'videoCaption': instance.videoCaption,
      'videoDesc': instance.videoDesc,
      'ownerId': instance.ownerId,
      'videoSettingItem': instance.videoSettingItem,
      'wkVideoId': instance.wkVideoId,
      'listItem': instance.listItem,
    };
