import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    @Default(0) int id,
    @Default(0) int userId,
    @Default(0) int paymentMethodId,
    @Default(0) int totalAmount,
    @Default(0) int purchaseStatus,
    @Default("") String stripePaymentIntentId,
    String? stripeTransactionId,
    @Default(0) int createBy,
    @Default("") String createdAt,
    @Default(0) int updateBy,
    @Default("") String updatedAt,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
