import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_get_user_info_model.freezed.dart';
part 'request_get_user_info_model.g.dart';

@freezed
class RequestGetUserInfoModel with _$RequestGetUserInfoModel {
  const factory RequestGetUserInfoModel({required String uid}) =
      _RequestGetUserInfoModel;

  factory RequestGetUserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RequestGetUserInfoModelFromJson(json);
}
