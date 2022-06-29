import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_get_list_video_model.freezed.dart';
part 'request_get_list_video_model.g.dart';
@freezed
class RequestGetListVideoModel with _$RequestGetListVideoModel {
  const factory RequestGetListVideoModel({
    required int? type,
    required int? userId,
    int? page,
    int? size,
  }) = _RequestGetListVideoModel;

  factory RequestGetListVideoModel.fromJson(Map<String, dynamic> json) =>
      _$RequestGetListVideoModelFromJson(json);
}