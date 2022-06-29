// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$_$_OrderEntityFromJson(Map<String, dynamic> json) {
  return _$_OrderEntity(
    id: json['id'] as int? ?? 0,
    userId: json['userId'] as int? ?? 0,
    paymentMethodId: json['paymentMethodId'] as int? ?? 0,
    totalAmount: json['totalAmount'] as int? ?? 0,
    purchaseStatus: json['purchaseStatus'] as int? ?? 0,
    stripePaymentIntentId: json['stripePaymentIntentId'] as String? ?? '',
    stripeTransactionId: json['stripeTransactionId'] as String?,
    createBy: json['createBy'] as int? ?? 0,
    createdAt: json['createdAt'] as String? ?? '',
    updateBy: json['updateBy'] as int? ?? 0,
    updatedAt: json['updatedAt'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'paymentMethodId': instance.paymentMethodId,
      'totalAmount': instance.totalAmount,
      'purchaseStatus': instance.purchaseStatus,
      'stripePaymentIntentId': instance.stripePaymentIntentId,
      'stripeTransactionId': instance.stripeTransactionId,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt,
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt,
    };
