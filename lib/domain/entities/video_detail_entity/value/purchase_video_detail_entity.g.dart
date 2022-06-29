// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_video_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseVideoDetailEntity _$_$_PurchaseVideoDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _$_PurchaseVideoDetailEntity(
    wkVideoId: json['wkVideoId'] as String?,
    listItem: (json['listItem'] as List<dynamic>?)
        ?.map((e) => ItemMaterialEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PurchaseVideoDetailEntityToJson(
        _$_PurchaseVideoDetailEntity instance) =>
    <String, dynamic>{
      'wkVideoId': instance.wkVideoId,
      'listItem': instance.listItem,
    };
