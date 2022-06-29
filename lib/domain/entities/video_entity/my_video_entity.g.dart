// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_video_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyVideoEntity _$_$_MyVideoEntityFromJson(Map<String, dynamic> json) {
  return _$_MyVideoEntity(
    videoId: json['videoId'] ?? 0,
    videoUrl: json['videoUrl'] as String?,
    thumbnailUrl: json['thumbnailUrl'] as String?,
    userId: json['userId'] as int?,
    userName: json['userName'] as String?,
    displayName: json['displayName'] as String?,
    uid: json['uid'] as String?,
  );
}

Map<String, dynamic> _$_$_MyVideoEntityToJson(_$_MyVideoEntity instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'videoUrl': instance.videoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'userId': instance.userId,
      'userName': instance.userName,
      'displayName': instance.displayName,
      'uid': instance.uid,
    };
