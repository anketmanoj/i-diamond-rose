// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardItemEntity _$_$_CardItemEntityFromJson(Map<String, dynamic> json) {
  return _$_CardItemEntity(
    videoId: json['videoId'] as int? ?? 0,
    quantity: json['quantity'] as String? ?? '',
    totalPrice: json['totalPrice'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_CardItemEntityToJson(_$_CardItemEntity instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
    };
