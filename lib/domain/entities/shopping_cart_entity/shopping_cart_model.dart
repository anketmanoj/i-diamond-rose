import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/cart_item_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/video_item_detail_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_cart_model.freezed.dart';
part 'shopping_cart_model.g.dart';
@freezed
class ShoppingCartModel with _$ShoppingCartModel {
  const factory ShoppingCartModel({
    CartItemEntity? cartItem,
    VideoItemDetailEntity? video,
  }) = _ShoppingCartModel;

  factory ShoppingCartModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartModelFromJson(json);
}