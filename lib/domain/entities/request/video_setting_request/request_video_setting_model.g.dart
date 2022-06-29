// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_video_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestVideoSettingModel _$_$_RequestVideoSettingModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestVideoSettingModel(
    contentPublicRange: json['contentPublicRange'] as int?,
    contentType: json['contentType'] as int?,
    discountFromDate: json['discountFromDate'] as String?,
    discountToDate: json['discountToDate'] as String?,
    saleFromDate: json['saleFromDate'] as String?,
    saleToDate: json['saleToDate'] as String?,
    purchaseSettingFromDate: json['purchaseSettingFromDate'] as String?,
    purchaseSettingToDate: json['purchaseSettingToDate'] as String?,
    discountPercent: (json['discountPercent'] as num?)?.toDouble(),
    isARContent: json['isARContent'] as bool?,
    isAvailableNumberPurchase: json['isAvailableNumberPurchase'] as bool?,
    isDiscountPeriod: json['isDiscountPeriod'] as bool?,
    isFreeContent: json['isFreeContent'] as bool?,
    isSalePeriod: json['isSalePeriod'] as bool?,
    isPublish: json['isPublish'] as bool?,
    price: (json['price'] as num?)?.toDouble(),
    isSummaryDiscount: json['isSummaryDiscount'] as bool?,
    summaryDiscountPercent:
        (json['summaryDiscountPercent'] as num?)?.toDouble(),
    videoDesc: json['videoDesc'] as String?,
    videoId: json['videoId'] as int?,
    videoTitle: json['videoTitle'] as String?,
    videoType:
        _$enumDecodeNullable(_$VideoSettingTypeEnumMap, json['videoType']),
    isGlamorous: json['isGlamorous'] as bool?,
    numberPurchase: (json['numberPurchase'] as num?)?.toDouble(),
    genres: (json['genres'] as List<dynamic>?)
            ?.map((e) => GenreEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_RequestVideoSettingModelToJson(
        _$_RequestVideoSettingModel instance) =>
    <String, dynamic>{
      'contentPublicRange': instance.contentPublicRange,
      'contentType': instance.contentType,
      'discountFromDate': instance.discountFromDate,
      'discountToDate': instance.discountToDate,
      'saleFromDate': instance.saleFromDate,
      'saleToDate': instance.saleToDate,
      'purchaseSettingFromDate': instance.purchaseSettingFromDate,
      'purchaseSettingToDate': instance.purchaseSettingToDate,
      'discountPercent': instance.discountPercent,
      'isARContent': instance.isARContent,
      'isAvailableNumberPurchase': instance.isAvailableNumberPurchase,
      'isDiscountPeriod': instance.isDiscountPeriod,
      'isFreeContent': instance.isFreeContent,
      'isSalePeriod': instance.isSalePeriod,
      'isPublish': instance.isPublish,
      'price': instance.price,
      'isSummaryDiscount': instance.isSummaryDiscount,
      'summaryDiscountPercent': instance.summaryDiscountPercent,
      'videoDesc': instance.videoDesc,
      'videoId': instance.videoId,
      'videoTitle': instance.videoTitle,
      'videoType': _$VideoSettingTypeEnumMap[instance.videoType],
      'isGlamorous': instance.isGlamorous,
      'numberPurchase': instance.numberPurchase,
      'genres': instance.genres,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$VideoSettingTypeEnumMap = {
  VideoSettingType.free: 1,
  VideoSettingType.paid: 2,
};
