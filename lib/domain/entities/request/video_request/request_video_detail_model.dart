import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_video_detail_model.freezed.dart';
part 'request_video_detail_model.g.dart';

@freezed
class RequestVideoDetailModel with _$RequestVideoDetailModel {
  const factory RequestVideoDetailModel({
    int? id,
    int? videoId,
  }) = _RequestVideoDetailModel;

  factory RequestVideoDetailModel.fromJson(Map<String, dynamic> json) =>
      _$RequestVideoDetailModelFromJson(json);
}
