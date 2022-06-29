import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_intent_entity.freezed.dart';
part 'payment_intent_entity.g.dart';

@freezed
class PaymentIntentEntity with _$PaymentIntentEntity {
  const factory PaymentIntentEntity({
    @Default("") String id,
    @Default(0) int amount,
    @Default(0) int amountReceived,
    List<dynamic>? charges,
    @Default("") String clientSecret,
    @Default("") String currency,
    @Default("") String description,
    @Default("") String receiptEmail,
    Map<String, dynamic>? metadata,
    @Default("") String status,
    String? paymentMethod,
    @Default("") String stripePublicKey,
  }) = _PaymentIntentEntity;

  factory PaymentIntentEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentEntityFromJson(json);
}
