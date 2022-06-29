import 'package:freezed_annotation/freezed_annotation.dart';

part 'noti_item_model.freezed.dart';
part 'noti_item_model.g.dart';
@freezed
class NotificationItemModel with _$NotificationItemModel {
  const factory NotificationItemModel({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String content,
    @Default("") String redirect,
    @Default("") String itemUrl,
    @Default("") String thumbnail,
    @Default(0) int userId,
    @Default(0) int createBy,
    @Default("") String createdAt,
    @Default(0) int updateBy,
    @Default("") String updatedAt,

  }) = _NotificationItemModel;

  factory NotificationItemModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemModelFromJson(json);
}