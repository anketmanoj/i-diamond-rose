import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_following_model.freezed.dart';
part 'request_following_model.g.dart';

@freezed
class RequestFollowingModel with _$RequestFollowingModel {
  const factory RequestFollowingModel({
    @Default(0) num uid,
  }) = _RequestFollowingModel;

  factory RequestFollowingModel.fromJson(Map<String, dynamic> json) =>
      _$RequestFollowingModelFromJson(json);
}
