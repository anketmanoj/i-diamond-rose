// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_content_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserContentModel _$_$_UserContentModelFromJson(Map<String, dynamic> json) {
  return _$_UserContentModel(
    id: json['id'] as int? ?? 0,
    pwd: json['pwd'] as String?,
    displayName: json['displayName'] as String?,
    realName: json['realName'] as String?,
    address: json['address'] as String?,
    mobile: json['mobile'] as String?,
    gender: json['gender'] as int?,
    avatar: json['avatar'] as String?,
    selfIntroduce: json['selfIntroduce'] as String?,
    roleId: json['roleId'] as int?,
    userTypeId: json['userTypeId'] as int?,
    countryId: json['countryId'] as int?,
    tiktokUrl: json['tiktokUrl'] as String?,
    twitterUrl: json['twitterUrl'] as String?,
    instagramUrl: json['instagramUrl'] as String?,
    facebookUrl: json['facebookUrl'] as String?,
    token: json['token'] as String?,
    userName: json['userName'] as String?,
    email: json['email'] as String?,
    refreshToken: json['refreshToken'] as String?,
    uid: json['uid'] as String?,
    userId: json['userId'] as int?,
    dateOfBirth: json['dateOfBirth'] as String?,
    roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
    language: json['language'] as String?,
    deleteFlag: json['deleteFlag'] as bool?,
    createBy: json['createBy'] as int?,
    createdAt: json['createdAt'] as String?,
    updateBy: json['updateBy'] as int?,
    isOfficial: json['isOfficial'] as bool?,
    updatedAt: json['updatedAt'] as String?,
    coverUrl: json['coverUrl'] as String?,
  );
}

Map<String, dynamic> _$_$_UserContentModelToJson(
        _$_UserContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pwd': instance.pwd,
      'displayName': instance.displayName,
      'realName': instance.realName,
      'address': instance.address,
      'mobile': instance.mobile,
      'gender': instance.gender,
      'avatar': instance.avatar,
      'selfIntroduce': instance.selfIntroduce,
      'roleId': instance.roleId,
      'userTypeId': instance.userTypeId,
      'countryId': instance.countryId,
      'tiktokUrl': instance.tiktokUrl,
      'twitterUrl': instance.twitterUrl,
      'instagramUrl': instance.instagramUrl,
      'facebookUrl': instance.facebookUrl,
      'token': instance.token,
      'userName': instance.userName,
      'email': instance.email,
      'refreshToken': instance.refreshToken,
      'uid': instance.uid,
      'userId': instance.userId,
      'dateOfBirth': instance.dateOfBirth,
      'roles': instance.roles,
      'language': instance.language,
      'deleteFlag': instance.deleteFlag,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt,
      'updateBy': instance.updateBy,
      'isOfficial': instance.isOfficial,
      'updatedAt': instance.updatedAt,
      'coverUrl': instance.coverUrl,
    };
