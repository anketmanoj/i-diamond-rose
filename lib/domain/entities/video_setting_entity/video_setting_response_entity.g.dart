// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_setting_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoSettingResponseEntity _$_$_VideoSettingResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _$_VideoSettingResponseEntity(
    id: json['id'] as int? ?? 0,
    videoId: json['videoId'] as int? ?? 0,
    videoType: json['videoType'] as int?,
    isFreeContent: json['isFreeContent'] as bool?,
    isARContent: json['isARContent'] as bool?,
    isSalePeriod: json['isSalePeriod'] as bool?,
    saleFromDate: json['saleFromDate'] == null
        ? null
        : DateTime.parse(json['saleFromDate'] as String),
    saleToDate: json['saleToDate'] == null
        ? null
        : DateTime.parse(json['saleToDate'] as String),
    isDiscountPeriod: json['isDiscountPeriod'] as bool?,
    discountPercent: (json['discountPercent'] as num?)?.toDouble(),
    discountFromDate: json['discountFromDate'] == null
        ? null
        : DateTime.parse(json['discountFromDate'] as String),
    discountToDate: json['discountToDate'] == null
        ? null
        : DateTime.parse(json['discountToDate'] as String),
    price: (json['price'] as num?)?.toDouble(),
    isAvailableNumberPurchase: json['isAvailableNumberPurchase'] as bool?,
    numberPurchase: (json['numberPurchase'] as num?)?.toDouble(),
    isGlamorous: json['isGlamorous'] as bool?,
    purchaseSettingFromDate: json['purchaseSettingFromDate'] == null
        ? null
        : DateTime.parse(json['purchaseSettingFromDate'] as String),
    purchaseSettingToDate: json['purchaseSettingToDate'] == null
        ? null
        : DateTime.parse(json['purchaseSettingToDate'] as String),
    contentType: json['contentType'] as int?,
    isSummaryDiscount: json['isSummaryDiscount'] as bool?,
    summaryDiscountPercent:
        (json['summaryDiscountPercent'] as num?)?.toDouble(),
    contentPublicRange: json['contentPublicRange'] as int?,
    isPublish: json['isPublish'] as bool?,
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

Map<String, dynamic> _$_$_VideoSettingResponseEntityToJson(
        _$_VideoSettingResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'videoType': instance.videoType,
      'isFreeContent': instance.isFreeContent,
      'isARContent': instance.isARContent,
      'isSalePeriod': instance.isSalePeriod,
      'saleFromDate': instance.saleFromDate?.toIso8601String(),
      'saleToDate': instance.saleToDate?.toIso8601String(),
      'isDiscountPeriod': instance.isDiscountPeriod,
      'discountPercent': instance.discountPercent,
      'discountFromDate': instance.discountFromDate?.toIso8601String(),
      'discountToDate': instance.discountToDate?.toIso8601String(),
      'price': instance.price,
      'isAvailableNumberPurchase': instance.isAvailableNumberPurchase,
      'numberPurchase': instance.numberPurchase,
      'isGlamorous': instance.isGlamorous,
      'purchaseSettingFromDate':
          instance.purchaseSettingFromDate?.toIso8601String(),
      'purchaseSettingToDate':
          instance.purchaseSettingToDate?.toIso8601String(),
      'contentType': instance.contentType,
      'isSummaryDiscount': instance.isSummaryDiscount,
      'summaryDiscountPercent': instance.summaryDiscountPercent,
      'contentPublicRange': instance.contentPublicRange,
      'isPublish': instance.isPublish,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
