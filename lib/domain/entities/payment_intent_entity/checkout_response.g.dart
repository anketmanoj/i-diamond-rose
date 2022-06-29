// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckoutResponse _$_$_CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _$_CheckoutResponse(
    response: json['response'] == null
        ? null
        : CheckoutEntity.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CheckoutResponseToJson(
        _$_CheckoutResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
