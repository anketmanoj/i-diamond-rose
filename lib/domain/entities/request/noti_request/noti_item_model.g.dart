// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noti_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationItemModel _$_$_NotificationItemModelFromJson(
    Map<String, dynamic> json) {
  return _$_NotificationItemModel(
    id: json['id'] as int? ?? 0,
    title: json['title'] as String? ?? '',
    content: json['content'] as String? ?? '',
    redirect: json['redirect'] as String? ?? '',
    itemUrl: json['itemUrl'] as String? ?? '',
    thumbnail: json['thumbnail'] as String? ?? '',
    userId: json['userId'] as int? ?? 0,
    createBy: json['createBy'] as int? ?? 0,
    createdAt: json['createdAt'] as String? ?? '',
    updateBy: json['updateBy'] as int? ?? 0,
    updatedAt: json['updatedAt'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_NotificationItemModelToJson(
        _$_NotificationItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'redirect': instance.redirect,
      'itemUrl': instance.itemUrl,
      'thumbnail': instance.thumbnail,
      'userId': instance.userId,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt,
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt,
    };
