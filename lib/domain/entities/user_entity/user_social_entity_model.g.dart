// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_social_entity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSocialModel _$_$_UserSocialModelFromJson(Map<String, dynamic> json) {
  return _$_UserSocialModel(
    tiktokUrl: json['tiktokUrl'] as String?,
    twitterUrl: json['twitterUrl'] as String?,
    instagramUrl: json['instagramUrl'] as String?,
    facebookUrl: json['facebookUrl'] as String?,
    selfIntroduce: json['selfIntroduce'] as String?,
  );
}

Map<String, dynamic> _$_$_UserSocialModelToJson(_$_UserSocialModel instance) =>
    <String, dynamic>{
      'tiktokUrl': instance.tiktokUrl,
      'twitterUrl': instance.twitterUrl,
      'instagramUrl': instance.instagramUrl,
      'facebookUrl': instance.facebookUrl,
      'selfIntroduce': instance.selfIntroduce,
    };
