import 'package:diamon_rose_app/domain/entities/payment_intent_entity/payment_intent_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_entity.freezed.dart';
part 'checkout_entity.g.dart';

@freezed
class CheckoutEntity with _$CheckoutEntity {
  const factory CheckoutEntity({
    PaymentIntentEntity? paymentIntent,
    // OrderEntity? order,
  }) = _CheckoutEntity;

  factory CheckoutEntity.fromJson(Map<String, dynamic> json) =>
      _$CheckoutEntityFromJson(json);
}
