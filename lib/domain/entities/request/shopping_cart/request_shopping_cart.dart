import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_shopping_cart.freezed.dart';
part 'request_shopping_cart.g.dart';

@freezed
class RequestShoppingCart with _$RequestShoppingCart {
  const factory RequestShoppingCart({
    @Default(0) int? backgroundId,
    @Default(0) int? effectId,
    @Default(0) int? videoId,
  }) = _RequestShoppingCart;

  factory RequestShoppingCart.fromJson(Map<String, dynamic> json) =>
      _$RequestShoppingCartFromJson(json);
}
