import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_item_model.freezed.dart';
part 'block_item_model.g.dart';

@freezed
class BlockUserItemModel with _$BlockUserItemModel {
  const factory BlockUserItemModel({
    @Default(0) int id,
    @Default(0) int userId,
    @Default(0) int myBlockUserId,
    @Default("") String displayName,
    @Default("") String avatar,
    @Default(0) int createBy,
    @Default("") String createdAt,
    @Default(0) int updateBy,
    @Default("") String updatedAt,
    @Default("") String userName,
    @Default("") String uid,
  }) = _BlockUserItemModel;

  factory BlockUserItemModel.fromJson(Map<String, dynamic> json) =>
      _$BlockUserItemModelFromJson(json);
}
