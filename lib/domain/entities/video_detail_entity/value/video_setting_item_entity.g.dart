// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_setting_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoSettingItemEntity _$_$_VideoSettingItemEntityFromJson(
    Map<String, dynamic> json) {
  return _$_VideoSettingItemEntity(
    id: json['id'] as int? ?? 0,
    videoId: json['videoId'] as int? ?? 0,
    videoType: json['videoType'] as int? ?? 0,
    salePrice: (json['salePrice'] as num?)?.toDouble() ?? 0,
    price: (json['price'] as num?)?.toDouble() ?? 0,
    discountPercent: (json['discountPercent'] as num?)?.toDouble() ?? 0,
    discount: json['discount'] as bool? ?? false,
    startDiscount: json['startDiscount'] as String? ?? '',
    endDiscount: json['endDiscount'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_VideoSettingItemEntityToJson(
        _$_VideoSettingItemEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'videoType': instance.videoType,
      'salePrice': instance.salePrice,
      'price': instance.price,
      'discountPercent': instance.discountPercent,
      'discount': instance.discount,
      'startDiscount': instance.startDiscount,
      'endDiscount': instance.endDiscount,
    };
