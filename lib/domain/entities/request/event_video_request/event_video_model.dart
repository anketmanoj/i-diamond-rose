import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_video_model.freezed.dart';
part 'event_video_model.g.dart';

@freezed
class EventVideoModel with _$EventVideoModel {
  const factory EventVideoModel({
    @Default(0) int id,
    @Default(0) int videoId,
    @Default(0) int count,
  }) = _EventVideoModel;

  factory EventVideoModel.fromJson(Map<String, dynamic> json) =>
      _$EventVideoModelFromJson(json);
}
