import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_device_token_model.freezed.dart';
part 'request_device_token_model.g.dart';

@freezed
class RequestDeviceTokenModel with _$RequestDeviceTokenModel {
  const factory RequestDeviceTokenModel({required String deviceToken}) =
      _RequestDeviceTokenModel;

  factory RequestDeviceTokenModel.fromJson(Map<String, dynamic> json) =>
      _$RequestDeviceTokenModelFromJson(json);
}
