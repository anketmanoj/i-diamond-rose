// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenEntity _$_$_TokenEntityFromJson(Map<String, dynamic> json) {
  return _$_TokenEntity(
    accessToken: json['accessToken'] as String?,
    refreshToken: json['refreshToken'] as String?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$_$_TokenEntityToJson(_$_TokenEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'type': instance.type,
    };
