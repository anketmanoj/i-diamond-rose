// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_following_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoFollowingEntity _$_$_VideoFollowingEntityFromJson(
    Map<String, dynamic> json) {
  return _$_VideoFollowingEntity(
    videoEntity: json['videoEntity'] == null
        ? null
        : VideoDTOEntity.fromJson(json['videoEntity'] as Map<String, dynamic>),
    videoSettingEntity: json['videoSettingEntity'] == null
        ? null
        : VideoSettingEntity.fromJson(
            json['videoSettingEntity'] as Map<String, dynamic>),
    userEntity: json['userEntity'] == null
        ? null
        : UserContentModel.fromJson(json['userEntity'] as Map<String, dynamic>),
    isLike: json['isLike'] as bool?,
    isSubscribe: json['isSubscribe'] as bool?,
    totalComment: json['totalComment'] as int?,
    totalFavorite: json['totalFavorite'] as int?,
    totalLike: json['totalLike'] as int?,
  );
}

Map<String, dynamic> _$_$_VideoFollowingEntityToJson(
        _$_VideoFollowingEntity instance) =>
    <String, dynamic>{
      'videoEntity': instance.videoEntity,
      'videoSettingEntity': instance.videoSettingEntity,
      'userEntity': instance.userEntity,
      'isLike': instance.isLike,
      'isSubscribe': instance.isSubscribe,
      'totalComment': instance.totalComment,
      'totalFavorite': instance.totalFavorite,
      'totalLike': instance.totalLike,
    };
