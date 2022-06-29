import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/item_material_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_video_detail_entity.freezed.dart';
part 'purchase_video_detail_entity.g.dart';

@freezed
class PurchaseVideoDetailEntity with _$PurchaseVideoDetailEntity {
  const factory PurchaseVideoDetailEntity({
    String? wkVideoId,
    List<ItemMaterialEntity>? listItem,
  }) = _PurchaseVideoDetailEntity;

  factory PurchaseVideoDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$PurchaseVideoDetailEntityFromJson(json);
}
