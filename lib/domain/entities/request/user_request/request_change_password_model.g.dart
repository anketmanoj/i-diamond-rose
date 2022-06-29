// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestChangePasswordModel _$_$_RequestChangePasswordModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestChangePasswordModel(
    password: json['password'] as String,
    passwordConfirm: json['passwordConfirm'] as String,
    passwordNew: json['passwordNew'] as String,
  );
}

Map<String, dynamic> _$_$_RequestChangePasswordModelToJson(
        _$_RequestChangePasswordModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'passwordNew': instance.passwordNew,
    };
