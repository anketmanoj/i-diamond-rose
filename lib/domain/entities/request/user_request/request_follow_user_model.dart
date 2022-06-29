import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_follow_user_model.freezed.dart';
part 'request_follow_user_model.g.dart';

@freezed
class RequestFollowUserModel with _$RequestFollowUserModel {
  const factory RequestFollowUserModel({
    @Default(0) num id,
  }) = _RequestFollowUserModel;

  factory RequestFollowUserModel.fromJson(Map<String, dynamic> json) =>
      _$RequestFollowUserModelFromJson(json);
}
