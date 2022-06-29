import 'package:diamon_rose_app/domain/entities/collection_entity/purchase_history.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_dto_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_setting_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_history_model.freezed.dart';
part 'purchase_history_model.g.dart';

@freezed
class PurchaseHistoryModel with _$PurchaseHistoryModel {
  const factory PurchaseHistoryModel({
    PurchaseHistory? purchaseHistory, 
    VideoDTOEntity? video,
    VideoSettingEntity? videoSetting
  }) = _PurchaseHistoryModel;

  factory PurchaseHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseHistoryModelFromJson(json);
}
