// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentIntentEntity _$_$_PaymentIntentEntityFromJson(
    Map<String, dynamic> json) {
  return _$_PaymentIntentEntity(
    id: json['id'] as String? ?? '',
    amount: json['amount'] as int? ?? 0,
    amountReceived: json['amountReceived'] as int? ?? 0,
    charges: json['charges'] as List<dynamic>?,
    clientSecret: json['clientSecret'] as String? ?? '',
    currency: json['currency'] as String? ?? '',
    description: json['description'] as String? ?? '',
    receiptEmail: json['receiptEmail'] as String? ?? '',
    metadata: json['metadata'] as Map<String, dynamic>?,
    status: json['status'] as String? ?? '',
    paymentMethod: json['paymentMethod'] as String?,
    stripePublicKey: json['stripePublicKey'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_PaymentIntentEntityToJson(
        _$_PaymentIntentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'amountReceived': instance.amountReceived,
      'charges': instance.charges,
      'clientSecret': instance.clientSecret,
      'currency': instance.currency,
      'description': instance.description,
      'receiptEmail': instance.receiptEmail,
      'metadata': instance.metadata,
      'status': instance.status,
      'paymentMethod': instance.paymentMethod,
      'stripePublicKey': instance.stripePublicKey,
    };
