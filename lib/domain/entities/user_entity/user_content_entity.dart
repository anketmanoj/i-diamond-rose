import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_content_entity.freezed.dart';
part 'user_content_entity.g.dart';

@freezed
class UserContentModel with _$UserContentModel {
  const factory UserContentModel(
      {@Default(0) int id,
      String? pwd,
      String? displayName,
      String? realName,
      String? address,
      String? mobile,
      int? gender,
      String? avatar,
      String? selfIntroduce,
      int? roleId,
      int? userTypeId,
      int? countryId,
      String? tiktokUrl,
      String? twitterUrl,
      String? instagramUrl,
      String? facebookUrl,
      String? token,
      String? userName,
      String? email,
      String? refreshToken,
      String? uid,
      int? userId,
      String? dateOfBirth,
      List<String>? roles,
      String? language,
      bool? deleteFlag,
      int? createBy,
      String? createdAt,
      int? updateBy,
      bool? isOfficial,
      String? updatedAt,
      String? coverUrl}) = _UserContentModel;

  factory UserContentModel.fromJson(Map<String, dynamic> json) =>
      _$UserContentModelFromJson(json);
}
