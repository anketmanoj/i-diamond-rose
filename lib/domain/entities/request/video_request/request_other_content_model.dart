import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_other_content_model.freezed.dart';
part 'request_other_content_model.g.dart';
@freezed
class RequestOtherContentModel with _$RequestOtherContentModel {
  const factory RequestOtherContentModel({
    required int? type,
    required int? ownerId,
    int? page,
    int? size,
  }) = _RequestOtherContentModel;

  factory RequestOtherContentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestOtherContentModelFromJson(json);
}