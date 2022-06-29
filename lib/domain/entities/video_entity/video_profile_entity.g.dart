// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoProfileEntity _$_$_VideoProfileEntityFromJson(
    Map<String, dynamic> json) {
  return _$_VideoProfileEntity(
    myVideo: MyVideoEntity.fromJson(json['myVideo'] as Map<String, dynamic>),
    videoItem:
        MyDraftVideoEntity.fromJson(json['videoItem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VideoProfileEntityToJson(
        _$_VideoProfileEntity instance) =>
    <String, dynamic>{
      'myVideo': instance.myVideo,
      'videoItem': instance.videoItem,
    };
