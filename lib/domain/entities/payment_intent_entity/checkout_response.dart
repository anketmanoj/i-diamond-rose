import 'package:diamon_rose_app/domain/entities/payment_intent_entity/checkout_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_response.freezed.dart';
part 'checkout_response.g.dart';

@freezed
class CheckoutResponse with _$CheckoutResponse {
  const factory CheckoutResponse({
    CheckoutEntity? response,
  }) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
}
