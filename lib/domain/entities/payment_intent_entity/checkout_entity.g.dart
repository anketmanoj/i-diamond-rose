// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckoutEntity _$_$_CheckoutEntityFromJson(Map<String, dynamic> json) {
  return _$_CheckoutEntity(
    paymentIntent: json['paymentIntent'] == null
        ? null
        : PaymentIntentEntity.fromJson(
            json['paymentIntent'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CheckoutEntityToJson(_$_CheckoutEntity instance) =>
    <String, dynamic>{
      'paymentIntent': instance.paymentIntent,
    };
