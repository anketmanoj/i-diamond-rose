import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_create_entity.freezed.dart';
part 'video_create_entity.g.dart';

@freezed
class VideoCreateEntity with _$VideoCreateEntity {
  const factory VideoCreateEntity({
    int? id,
    @Default("") String videoUrl,
    @Default("") String thumbnailUrl,
    @Default("") String downloadKey,
    @Default("") thumbnailDownloadKey,
    @Default("") videoCaption,
    @Default("") videoDesc,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    int? ownerId,
    @Default(false) bool deleteFlag,
    int? createBy,
    @Default("") createdAt,
    int? updateBy,
    @Default("") updatedAt,
    @Default(false) bool selected,

  }) = _VideoCreateEntity;

  factory VideoCreateEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoCreateEntityFromJson(json);
}
