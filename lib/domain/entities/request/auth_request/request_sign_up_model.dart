import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_sign_up_model.freezed.dart';
part 'request_sign_up_model.g.dart';

@freezed
class RequestSignUpModel with _$RequestSignUpModel {
  const factory RequestSignUpModel({
    required String displayName,
    required String email,
    @Default(0) int countryId,
    @Default(0) int gender,
    required String password,
    required String dateOfBirth,
    required String roleCd,
    required String mobile,
    @Default(0) int userTypeId,
    required String userName,
    required String language,
  }) = _RequestSignUpModel;

  factory RequestSignUpModel.fromJson(Map<String, dynamic> json) =>
      _$RequestSignUpModelFromJson(json);
}
