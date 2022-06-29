import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_social_entity_model.freezed.dart';
part 'user_social_entity_model.g.dart';

@freezed
class UserSocialModel with _$UserSocialModel {
  const factory UserSocialModel({
    String? tiktokUrl,
    String? twitterUrl,
    String? instagramUrl,
    String? facebookUrl,
    String? selfIntroduce,
  }) = _UserSocialModel;

  factory UserSocialModel.fromJson(Map<String, dynamic> json) =>
      _$UserSocialModelFromJson(json);
}
