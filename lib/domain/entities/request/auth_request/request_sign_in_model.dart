import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_sign_in_model.freezed.dart';
part 'request_sign_in_model.g.dart';

@freezed
class RequestSignInModel with _$RequestSignInModel {
  const factory RequestSignInModel({
    required String userNameOrEmail,
    required String password,
  }) = _RequestSignInModel;

  factory RequestSignInModel.fromJson(Map<String, dynamic> json) =>
      _$RequestSignInModelFromJson(json);
}
