import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_response_entity.freezed.dart';
part 'video_response_entity.g.dart';

@freezed
class VideoResponseEntity with _$VideoResponseEntity {
  const factory VideoResponseEntity(
      {@Default(0) int id,
      String? videoUrl,
      String? thumbnailUrl,
      @Default("") String videoCaption,
      @Default("") String videoDesc,
      int? likeCount,
      int? commentCount,
      @Default(0) int ownerId,
      bool? deleteFlag,
      int? createBy,
      DateTime? createdAt,
      int? updateBy,
      DateTime? updatedAt}) = _VideoResponseEntity;

  factory VideoResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseEntityFromJson(json);
}
