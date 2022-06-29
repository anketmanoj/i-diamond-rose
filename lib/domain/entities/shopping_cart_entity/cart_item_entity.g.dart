// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemEntity _$_$_CartItemEntityFromJson(Map<String, dynamic> json) {
  return _$_CartItemEntity(
    id: json['id'] as int? ?? 0,
    videoId: json['videoId'] as int? ?? 0,
    quantity: json['quantity'] as int? ?? 0,
    totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
    salePrice: (json['salePrice'] as num?)?.toDouble() ?? 0,
    discountPercent: (json['discountPercent'] as num?)?.toDouble() ?? 0,
    discount: json['discount'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_CartItemEntityToJson(_$_CartItemEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'salePrice': instance.salePrice,
      'discountPercent': instance.discountPercent,
      'discount': instance.discount,
    };
