import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_setting_entity.freezed.dart';
part 'video_setting_entity.g.dart';

@freezed
class VideoSettingEntity with _$VideoSettingEntity {
  const factory VideoSettingEntity({
    @Default(0) int id,
    int? videoId,
    int? videoType,
    bool? isFreeContent,
    bool? isARContent,
    bool? isSalePeriod,
    int? contentType,
    DateTime? saleFromDate,
    double? price,
    bool? isAvailableNumberPurchase,
    bool? isPublish,
    DateTime? saleToDate,
    double? discountPercent,
    double? donationPrice,
    bool? active,
    bool? salePeriod,
  }) = _VideoSettingEntity;

  factory VideoSettingEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoSettingEntityFromJson(json);
}
