import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_video_request.freezed.dart';
part 'draft_video_request.g.dart';
@freezed
class DraftVideoRequest with _$DraftVideoRequest {
  const factory DraftVideoRequest({
    required int page,
    required int size,
  }) = _DraftVideoRequest;

  factory DraftVideoRequest.fromJson(Map<String, dynamic> json) =>
      _$DraftVideoRequestFromJson(json);
}