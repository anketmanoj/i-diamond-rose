import 'package:diamon_rose_app/domain/entities/video_entity/my_video_entity.dart';
import 'package:diamon_rose_app/domain/entities/wk_video_entity/my_draft_video_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_profile_entity.freezed.dart';
part 'video_profile_entity.g.dart';

@freezed
class VideoProfileEntity with _$VideoProfileEntity {
  const factory VideoProfileEntity({
    required MyVideoEntity myVideo,
    required MyDraftVideoEntity videoItem,
  }) = _VideoProfileEntity;

  factory VideoProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoProfileEntityFromJson(json);
}
