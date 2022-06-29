// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseHistoryModel _$_$_PurchaseHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _$_PurchaseHistoryModel(
    purchaseHistory: json['purchaseHistory'] == null
        ? null
        : PurchaseHistory.fromJson(
            json['purchaseHistory'] as Map<String, dynamic>),
    video: json['video'] == null
        ? null
        : VideoDTOEntity.fromJson(json['video'] as Map<String, dynamic>),
    videoSetting: json['videoSetting'] == null
        ? null
        : VideoSettingEntity.fromJson(
            json['videoSetting'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PurchaseHistoryModelToJson(
        _$_PurchaseHistoryModel instance) =>
    <String, dynamic>{
      'purchaseHistory': instance.purchaseHistory,
      'video': instance.video,
      'videoSetting': instance.videoSetting,
    };
