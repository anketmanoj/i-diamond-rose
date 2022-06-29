import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_comment_video_model.freezed.dart';
part 'request_comment_video_model.g.dart';
@freezed
class RequestCommentVideoModel with _$RequestCommentVideoModel {
  const factory RequestCommentVideoModel({
    required int? type,
    required int? videoId,
    int? page,
    int? size,
  }) = _RequestCommentVideoModel;

  factory RequestCommentVideoModel.fromJson(Map<String, dynamic> json) =>
      _$RequestCommentVideoModelFromJson(json);
}