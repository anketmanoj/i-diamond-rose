// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingCartModel _$_$_ShoppingCartModelFromJson(Map<String, dynamic> json) {
  return _$_ShoppingCartModel(
    cartItem: json['cartItem'] == null
        ? null
        : CartItemEntity.fromJson(json['cartItem'] as Map<String, dynamic>),
    video: json['video'] == null
        ? null
        : VideoItemDetailEntity.fromJson(json['video'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ShoppingCartModelToJson(
        _$_ShoppingCartModel instance) =>
    <String, dynamic>{
      'cartItem': instance.cartItem,
      'video': instance.video,
    };
