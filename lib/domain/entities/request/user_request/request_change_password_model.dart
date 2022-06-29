import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_change_password_model.freezed.dart';
part 'request_change_password_model.g.dart';
@freezed
class RequestChangePasswordModel with _$RequestChangePasswordModel {
  const factory RequestChangePasswordModel({
    required String password,
    required String passwordConfirm,
    required String passwordNew,
  }) = _RequestChangePasswordModel;

  factory RequestChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$RequestChangePasswordModelFromJson(json);
}