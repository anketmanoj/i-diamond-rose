import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_create_password_model.freezed.dart';
part 'request_create_password_model.g.dart';

@freezed
class RequestCreatePasswordModel with _$RequestCreatePasswordModel {
  const factory RequestCreatePasswordModel({
    required String tmpUserId,
    required String password,
  }) = _RequestCreatePasswordModel;

  factory RequestCreatePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$RequestCreatePasswordModelFromJson(json);
}
