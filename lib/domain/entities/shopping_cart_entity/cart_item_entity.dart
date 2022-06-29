import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_entity.freezed.dart';
part 'cart_item_entity.g.dart';
@freezed
class CartItemEntity with _$CartItemEntity {
  const factory CartItemEntity({
    @Default(0) int id,
    @Default(0) int videoId,
    @Default(0) int quantity,
    @Default(0) double totalPrice,
    @Default(0) double salePrice,
    @Default(0) double discountPercent,
    @Default(false) bool discount,

  }) = _CartItemEntity;

  factory CartItemEntity.fromJson(Map<String, dynamic> json) =>
      _$CartItemEntityFromJson(json);
}