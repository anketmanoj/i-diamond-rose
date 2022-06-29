import 'package:diamon_rose_app/domain/entities/video_entity/video_dto_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_setting_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';
part 'video_entity.g.dart';

@freezed
class VideoEntity with _$VideoEntity {
  const factory VideoEntity(
      {VideoDTOEntity? videoDTO,
      VideoSettingEntity? videoSettingDTO,
      String? userName,
      String? displayName,
      @Default(false) bool? isSubscribe,
      String? urlImage,
      int? userId,
      String? uid, // users.uid
      bool? isLike,
      @Default(false) bool isVideoOwner,
      @Default(0) int totalLike,
      @Default(0) int totalFavorite,
      @Default(0) int totalComment,
      bool? isFavorite}) = _VideoEntity;

  factory VideoEntity.fromJson(Map<String, dynamic> json) =>
      _$VideoEntityFromJson(json);
}
