// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoEntity _$_$_VideoEntityFromJson(Map<String, dynamic> json) {
  return _$_VideoEntity(
    videoDTO: json['videoDTO'] == null
        ? null
        : VideoDTOEntity.fromJson(json['videoDTO'] as Map<String, dynamic>),
    videoSettingDTO: json['videoSettingDTO'] == null
        ? null
        : VideoSettingEntity.fromJson(
            json['videoSettingDTO'] as Map<String, dynamic>),
    userName: json['userName'] as String?,
    displayName: json['displayName'] as String?,
    isSubscribe: json['isSubscribe'] as bool? ?? false,
    urlImage: json['urlImage'] as String?,
    userId: json['userId'] as int?,
    uid: json['uid'] as String?,
    isLike: json['isLike'] as bool?,
    isVideoOwner: json['isVideoOwner'] as bool? ?? false,
    totalLike: json['totalLike'] as int? ?? 0,
    totalFavorite: json['totalFavorite'] as int? ?? 0,
    totalComment: json['totalComment'] as int? ?? 0,
    isFavorite: json['isFavorite'] as bool?,
  );
}

Map<String, dynamic> _$_$_VideoEntityToJson(_$_VideoEntity instance) =>
    <String, dynamic>{
      'videoDTO': instance.videoDTO,
      'videoSettingDTO': instance.videoSettingDTO,
      'userName': instance.userName,
      'displayName': instance.displayName,
      'isSubscribe': instance.isSubscribe,
      'urlImage': instance.urlImage,
      'userId': instance.userId,
      'uid': instance.uid,
      'isLike': instance.isLike,
      'isVideoOwner': instance.isVideoOwner,
      'totalLike': instance.totalLike,
      'totalFavorite': instance.totalFavorite,
      'totalComment': instance.totalComment,
      'isFavorite': instance.isFavorite,
    };
