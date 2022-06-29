// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_get_list_video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestGetListVideoModel _$_$_RequestGetListVideoModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestGetListVideoModel(
    type: json['type'] as int?,
    userId: json['userId'] as int?,
    page: json['page'] as int?,
    size: json['size'] as int?,
  );
}

Map<String, dynamic> _$_$_RequestGetListVideoModelToJson(
        _$_RequestGetListVideoModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'userId': instance.userId,
      'page': instance.page,
      'size': instance.size,
    };
