import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_checkout_model.freezed.dart';
part 'request_checkout_model.g.dart';

@freezed
class RequestCheckoutModel with _$RequestCheckoutModel {
  const factory RequestCheckoutModel({
    required List<int> shoppingCartItems,
  }) = _RequestCheckoutModel;

  factory RequestCheckoutModel.fromJson(Map<String, dynamic> json) =>
      _$RequestCheckoutModelFromJson(json);
}
