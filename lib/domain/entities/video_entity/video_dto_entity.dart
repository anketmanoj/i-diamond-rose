import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_dto_entity.freezed.dart';
part 'video_dto_entity.g.dart';

@freezed
class VideoDTOEntity with _$VideoDTOEntity {
  const factory VideoDTOEntity(
      {@Default(0) int id,
      String? videoUrl,
      String? downloadKey,
      String? thumbnailUrl,
      String? thumbnailDownloadKey,
      String? videoCaption,
      String? videoDesc,
      bool? isSettingComplete,
      @Default(0) int? likeCount,
      @Default(0) int? commentCount}) = _VideoDTOEntity;

  factory VideoDTOEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoDTOEntityFromJson(json);
}
