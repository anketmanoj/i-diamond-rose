// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_setting_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoSettingEntity _$_$_VideoSettingEntityFromJson(
    Map<String, dynamic> json) {
  return _$_VideoSettingEntity(
    id: json['id'] as int? ?? 0,
    videoId: json['videoId'] as int?,
    videoType: json['videoType'] as int?,
    isFreeContent: json['isFreeContent'] as bool?,
    isARContent: json['isARContent'] as bool?,
    isSalePeriod: json['isSalePeriod'] as bool?,
    contentType: json['contentType'] as int?,
    saleFromDate: json['saleFromDate'] == null
        ? null
        : DateTime.parse(json['saleFromDate'] as String),
    price: (json['price'] as num?)?.toDouble(),
    isAvailableNumberPurchase: json['isAvailableNumberPurchase'] as bool?,
    isPublish: json['isPublish'] as bool?,
    saleToDate: json['saleToDate'] == null
        ? null
        : DateTime.parse(json['saleToDate'] as String),
    discountPercent: (json['discountPercent'] as num?)?.toDouble(),
    donationPrice: (json['donationPrice'] as num?)?.toDouble(),
    active: json['active'] as bool?,
    salePeriod: json['salePeriod'] as bool?,
  );
}

Map<String, dynamic> _$_$_VideoSettingEntityToJson(
        _$_VideoSettingEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'videoType': instance.videoType,
      'isFreeContent': instance.isFreeContent,
      'isARContent': instance.isARContent,
      'isSalePeriod': instance.isSalePeriod,
      'contentType': instance.contentType,
      'saleFromDate': instance.saleFromDate?.toIso8601String(),
      'price': instance.price,
      'isAvailableNumberPurchase': instance.isAvailableNumberPurchase,
      'isPublish': instance.isPublish,
      'saleToDate': instance.saleToDate?.toIso8601String(),
      'discountPercent': instance.discountPercent,
      'donationPrice': instance.donationPrice,
      'active': instance.active,
      'salePeriod': instance.salePeriod,
    };
