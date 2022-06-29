import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_upload_avatar_model.freezed.dart';
part 'response_upload_avatar_model.g.dart';
@freezed
class ResponseAvatarModel with _$ResponseAvatarModel {
  const factory ResponseAvatarModel({
    required String url,
  }) = _ResponseAvatarModel;

  factory ResponseAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseAvatarModelFromJson(json);
}