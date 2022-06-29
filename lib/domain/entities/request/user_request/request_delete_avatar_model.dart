import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_delete_avatar_model.freezed.dart';
part 'request_delete_avatar_model.g.dart';
@freezed
class RequestDeleteAvatarModel with _$RequestDeleteAvatarModel {
  const factory RequestDeleteAvatarModel({
    required String uid,

  }) = _RequestDeleteAvatarModel;

  factory RequestDeleteAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$RequestDeleteAvatarModelFromJson(json);
}