import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/shopping_cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_list_model.freezed.dart';
part 'cart_list_model.g.dart';
@freezed
class CartListModel with _$CartListModel {
  const factory CartListModel({
    List<ShoppingCartModel>? listItem,
    @Default(0) int totalElement,
  }) = _CartListModel;

  factory CartListModel.fromJson(Map<String, dynamic> json) =>
      _$CartListModelFromJson(json);
}