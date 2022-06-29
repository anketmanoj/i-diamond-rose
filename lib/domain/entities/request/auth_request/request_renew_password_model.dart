import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_renew_password_model.freezed.dart';
part 'request_renew_password_model.g.dart';

@freezed
class RequestRenewPasswordModel with _$RequestRenewPasswordModel {
  const factory RequestRenewPasswordModel({
    required String email,
    required String password,
  }) = _RequestRenewPasswordModel;

  factory RequestRenewPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$RequestRenewPasswordModelFromJson(json);
}
