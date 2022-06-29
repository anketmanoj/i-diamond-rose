import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({
    @Default(0) int id,
    String? videoUrl,
    String? downloadKey,
    String? thumbnailUrl,
    String? thumbnailDownloadKey,
    String? videoCaption,
    String? videoDesc,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int favoriteCount,
    @Default(0) int ownerId,
    @Default(0) int wkVideoId,
    bool? deleteFlag,
    @Default(0) int createBy,
    String? createdAt,
    @Default(0) int updateBy,
    String? updatedAt,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}