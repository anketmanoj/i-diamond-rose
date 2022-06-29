// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$_$_UserEntityFromJson(Map<String, dynamic> json) {
  return _$_UserEntity(
    response: json['response'] == null
        ? null
        : UserContentModel.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
