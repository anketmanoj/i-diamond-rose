// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_total_content_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserTotalContentModel _$_$_UserTotalContentModelFromJson(
    Map<String, dynamic> json) {
  return _$_UserTotalContentModel(
    totalFollower: json['totalFollower'] as int?,
    totalVideo: json['totalVideo'] as int?,
    totalFollowing: json['totalFollowing'] as int?,
    isSubscribe: json['isSubscribe'] as bool?,
    avatarUrl: json['avatarUrl'] as String?,
    coverUrl: json['coverUrl'] as String?,
    userInfo: json['userInfo'] == null
        ? null
        : UserContentModel.fromJson(json['userInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserTotalContentModelToJson(
        _$_UserTotalContentModel instance) =>
    <String, dynamic>{
      'totalFollower': instance.totalFollower,
      'totalVideo': instance.totalVideo,
      'totalFollowing': instance.totalFollowing,
      'isSubscribe': instance.isSubscribe,
      'avatarUrl': instance.avatarUrl,
      'coverUrl': instance.coverUrl,
      'userInfo': instance.userInfo,
    };
