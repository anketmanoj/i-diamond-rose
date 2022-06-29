// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_sign_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestSignInModel _$_$_RequestSignInModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestSignInModel(
    userNameOrEmail: json['userNameOrEmail'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_RequestSignInModelToJson(
        _$_RequestSignInModel instance) =>
    <String, dynamic>{
      'userNameOrEmail': instance.userNameOrEmail,
      'password': instance.password,
    };
