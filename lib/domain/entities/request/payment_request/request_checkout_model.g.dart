// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestCheckoutModel _$_$_RequestCheckoutModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestCheckoutModel(
    shoppingCartItems: (json['shoppingCartItems'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
  );
}

Map<String, dynamic> _$_$_RequestCheckoutModelToJson(
        _$_RequestCheckoutModel instance) =>
    <String, dynamic>{
      'shoppingCartItems': instance.shoppingCartItems,
    };
