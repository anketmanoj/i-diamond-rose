// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockUserItemModel _$_$_BlockUserItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_BlockUserItemModel(
    id: json['id'] as int? ?? 0,
    userId: json['userId'] as int? ?? 0,
    myBlockUserId: json['myBlockUserId'] as int? ?? 0,
    displayName: json['displayName'] as String? ?? '',
    avatar: json['avatar'] as String? ?? '',
    createBy: json['createBy'] as int? ?? 0,
    createdAt: json['createdAt'] as String? ?? '',
    updateBy: json['updateBy'] as int? ?? 0,
    updatedAt: json['updatedAt'] as String? ?? '',
    userName: json['userName'] as String? ?? '',
    uid: json['uid'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_BlockUserItemModelToJson(
        _$_BlockUserItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'myBlockUserId': instance.myBlockUserId,
      'displayName': instance.displayName,
      'avatar': instance.avatar,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt,
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt,
      'userName': instance.userName,
      'uid': instance.uid,
    };
