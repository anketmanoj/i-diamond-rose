// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_other_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestOtherContentModel _$_$_RequestOtherContentModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestOtherContentModel(
    type: json['type'] as int?,
    ownerId: json['ownerId'] as int?,
    page: json['page'] as int?,
    size: json['size'] as int?,
  );
}

Map<String, dynamic> _$_$_RequestOtherContentModelToJson(
        _$_RequestOtherContentModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'ownerId': instance.ownerId,
      'page': instance.page,
      'size': instance.size,
    };
