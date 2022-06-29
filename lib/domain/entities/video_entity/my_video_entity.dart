import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_video_entity.freezed.dart';
part 'my_video_entity.g.dart';

@freezed
class MyVideoEntity with _$MyVideoEntity {
  const factory MyVideoEntity({
    @Default(0) videoId,
    String? videoUrl,
    String? thumbnailUrl,
    int? userId,
    String? userName,
    String? displayName,
    String? uid,
  }) = _MyVideoEntity;

  factory MyVideoEntity.fromJson(Map<String, dynamic> json) =>
      _$MyVideoEntityFromJson(json);
}
