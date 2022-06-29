// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestSignUpModel _$_$_RequestSignUpModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestSignUpModel(
    displayName: json['displayName'] as String,
    email: json['email'] as String,
    countryId: json['countryId'] as int? ?? 0,
    gender: json['gender'] as int? ?? 0,
    password: json['password'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
    roleCd: json['roleCd'] as String,
    mobile: json['mobile'] as String,
    userTypeId: json['userTypeId'] as int? ?? 0,
    userName: json['userName'] as String,
    language: json['language'] as String,
  );
}

Map<String, dynamic> _$_$_RequestSignUpModelToJson(
        _$_RequestSignUpModel instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'countryId': instance.countryId,
      'gender': instance.gender,
      'password': instance.password,
      'dateOfBirth': instance.dateOfBirth,
      'roleCd': instance.roleCd,
      'mobile': instance.mobile,
      'userTypeId': instance.userTypeId,
      'userName': instance.userName,
      'language': instance.language,
    };
