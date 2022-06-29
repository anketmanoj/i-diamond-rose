import 'package:diamon_rose_app/domain/entities/enum/video_setting_type.dart';
import 'package:diamon_rose_app/domain/entities/genre_entity/genre_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_video_setting_model.freezed.dart';
part 'request_video_setting_model.g.dart';

@freezed
class RequestVideoSettingModel with _$RequestVideoSettingModel {
  const factory RequestVideoSettingModel({
    int? contentPublicRange,
    int? contentType,
    String? discountFromDate,
    String? discountToDate,
    String? saleFromDate,
    String? saleToDate,
    String? purchaseSettingFromDate,
    String? purchaseSettingToDate,
    double? discountPercent,
    bool? isARContent,
    bool? isAvailableNumberPurchase,
    bool? isDiscountPeriod,
    bool? isFreeContent,
    bool? isSalePeriod,
    bool? isPublish,
    double? price,
    bool? isSummaryDiscount,
    double? summaryDiscountPercent,
    String? videoDesc,
    int? videoId,
    String? videoTitle,
    VideoSettingType? videoType,
    bool? isGlamorous,
    double? numberPurchase,
    @Default([]) List<GenreEntity> genres,
  }) = _RequestVideoSettingModel;

  factory RequestVideoSettingModel.fromJson(Map<String, dynamic> json) =>
      _$RequestVideoSettingModelFromJson(json);
}
