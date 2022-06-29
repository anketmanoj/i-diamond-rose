import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_total_content_entity.freezed.dart';
part 'user_total_content_entity.g.dart';

@freezed
class UserTotalContentModel with _$UserTotalContentModel {
  const factory UserTotalContentModel(
      {int? totalFollower,
      int? totalVideo,
      int? totalFollowing,
      bool? isSubscribe,
      String? avatarUrl,
      String? coverUrl,
      UserContentModel? userInfo}) = _UserTotalContentModel;

  factory UserTotalContentModel.fromJson(Map<String, dynamic> json) =>
      _$UserTotalContentModelFromJson(json);
}
