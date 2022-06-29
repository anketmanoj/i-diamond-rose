import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_material_entity.freezed.dart';
part 'item_material_entity.g.dart';

@freezed
class ItemMaterialEntity with _$ItemMaterialEntity {
  const factory ItemMaterialEntity({
    @Default(0) int id,
    @Default("") String itemUrl,
    @Default("") String itemThumbnailUrl,
  }) = _ItemMaterialEntity;

  factory ItemMaterialEntity.fromJson(Map<String, dynamic> json) =>
      _$ItemMaterialEntityFromJson(json);
}
