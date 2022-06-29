// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteModel _$_$_FavoriteModelFromJson(Map<String, dynamic> json) {
  return _$_FavoriteModel(
    id: json['id'] as int? ?? 0,
    videoUrl: json['videoUrl'] as String?,
    downloadKey: json['downloadKey'] as String?,
    thumbnailUrl: json['thumbnailUrl'] as String?,
    thumbnailDownloadKey: json['thumbnailDownloadKey'] as String?,
    videoCaption: json['videoCaption'] as String?,
    videoDesc: json['videoDesc'] as String?,
    likeCount: json['likeCount'] as int? ?? 0,
    commentCount: json['commentCount'] as int? ?? 0,
    favoriteCount: json['favoriteCount'] as int? ?? 0,
    ownerId: json['ownerId'] as int? ?? 0,
    wkVideoId: json['wkVideoId'] as int? ?? 0,
    deleteFlag: json['deleteFlag'] as bool?,
    createBy: json['createBy'] as int? ?? 0,
    createdAt: json['createdAt'] as String?,
    updateBy: json['updateBy'] as int? ?? 0,
    updatedAt: json['updatedAt'] as String?,
  );
}

Map<String, dynamic> _$_$_FavoriteModelToJson(_$_FavoriteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoUrl': instance.videoUrl,
      'downloadKey': instance.downloadKey,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailDownloadKey': instance.thumbnailDownloadKey,
      'videoCaption': instance.videoCaption,
      'videoDesc': instance.videoDesc,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'favoriteCount': instance.favoriteCount,
      'ownerId': instance.ownerId,
      'wkVideoId': instance.wkVideoId,
      'deleteFlag': instance.deleteFlag,
      'createBy': instance.createBy,
      'createdAt': instance.createdAt,
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt,
    };
