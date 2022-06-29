import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_setting_item_entity.freezed.dart';
part 'video_setting_item_entity.g.dart';

@freezed
class VideoSettingItemEntity with _$VideoSettingItemEntity {
  const factory VideoSettingItemEntity({
    @Default(0) int id,
    @Default(0) int videoId,
    @Default(0) int videoType,
    @Default(0) double salePrice,
    @Default(0) double price,
    @Default(0) double discountPercent,
    @Default(false) bool discount,
    @Default("") String startDiscount,
    @Default("") String endDiscount,
  }) = _VideoSettingItemEntity;

  factory VideoSettingItemEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoSettingItemEntityFromJson(json);
}

extension VideoSetting on VideoSettingItemEntity {
  double displayedSalePrice() =>
      this.discount == true ? this.salePrice : this.price;

  double displayedDiscountPercent() =>
      this.discount == true ? this.discountPercent : 0;
}
