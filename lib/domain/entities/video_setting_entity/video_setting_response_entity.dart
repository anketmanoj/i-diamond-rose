import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_setting_response_entity.freezed.dart';
part 'video_setting_response_entity.g.dart';

@freezed
class VideoSettingResponseEntity with _$VideoSettingResponseEntity {
  const factory VideoSettingResponseEntity({
    @Default(0) int id,
    @Default(0) int videoId,
    int? videoType,
    bool? isFreeContent,
    bool? isARContent,
    bool? isSalePeriod,
    DateTime? saleFromDate,
    DateTime? saleToDate,
    bool? isDiscountPeriod,
    double? discountPercent,
    DateTime? discountFromDate,
    DateTime? discountToDate,
    double? price,
    bool? isAvailableNumberPurchase,
    double? numberPurchase,
    bool? isGlamorous,
    DateTime? purchaseSettingFromDate,
    DateTime? purchaseSettingToDate,
    int? contentType,
    bool? isSummaryDiscount,
    double? summaryDiscountPercent,
    int? contentPublicRange,
    bool? isPublish,
    int? createBy,
    DateTime? createdAt,
    int? updateBy,
    DateTime? updatedAt,
  }) = _VideoSettingResponseEntity;

  factory VideoSettingResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoSettingResponseEntityFromJson(json);
}
