import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_dto_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_setting_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_following_entity.freezed.dart';
part 'video_following_entity.g.dart';

@freezed
class VideoFollowingEntity with _$VideoFollowingEntity {
  const factory VideoFollowingEntity({
    VideoDTOEntity? videoEntity,
    VideoSettingEntity? videoSettingEntity,
    UserContentModel? userEntity,
    bool? isLike,
    bool? isSubscribe,
    int? totalComment,
    int? totalFavorite,
    int? totalLike,
  }) = _VideoFollowingEntity;

  factory VideoFollowingEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoFollowingEntityFromJson(json);
}
