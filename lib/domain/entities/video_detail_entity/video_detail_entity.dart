import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/video_item_detail_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_detail_entity.freezed.dart';
part 'video_detail_entity.g.dart';

@freezed
class VideoDetailEntity with _$VideoDetailEntity {
  const factory VideoDetailEntity({
    @Default(0) int userId,
    @Default("") String avatarUrl,
    @Default("") String displayName,
    VideoItemDetailEntity? videoItemDetail,
  }) = _VideoDetailEntity;

  factory VideoDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoDetailEntityFromJson(json);
}
