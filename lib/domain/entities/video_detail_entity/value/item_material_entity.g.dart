// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_material_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemMaterialEntity _$_$_ItemMaterialEntityFromJson(
    Map<String, dynamic> json) {
  return _$_ItemMaterialEntity(
    id: json['id'] as int? ?? 0,
    itemUrl: json['itemUrl'] as String? ?? '',
    itemThumbnailUrl: json['itemThumbnailUrl'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_ItemMaterialEntityToJson(
        _$_ItemMaterialEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemUrl': instance.itemUrl,
      'itemThumbnailUrl': instance.itemThumbnailUrl,
    };
