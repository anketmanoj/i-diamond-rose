import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_block_user_model.freezed.dart';
part 'request_block_user_model.g.dart';

@freezed
class RequestBlockUserModel with _$RequestBlockUserModel {
  const factory RequestBlockUserModel({
    @Default(0) num blockUserId,
  }) = _RequestBlockUserModel;

  factory RequestBlockUserModel.fromJson(Map<String, dynamic> json) =>
      _$RequestBlockUserModelFromJson(json);
}
