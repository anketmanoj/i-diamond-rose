import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/item_material_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/video_setting_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_item_detail_entity.freezed.dart';
part 'video_item_detail_entity.g.dart';

@freezed
class VideoItemDetailEntity with _$VideoItemDetailEntity {
  const factory VideoItemDetailEntity({
    @Default(0) int id,
    @Default("") String videoUrl,
    @Default("") String videoUID,
    @Default("") String videoThumbnail,
    @Default("") String videoCaption,
    @Default("") String videoDesc,
    @Default(0) int ownerId,
    VideoSettingItemEntity? videoSettingItem,
    @Default(0) int wkVideoId,
    List<ItemMaterialEntity>? listItem,
  }) = _VideoItemDetailEntity;

  factory VideoItemDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoItemDetailEntityFromJson(json);
}
