import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_get_ar_model.freezed.dart';
part 'request_get_ar_model.g.dart';

@freezed
class RequestGetArModel with _$RequestGetArModel {
  const factory RequestGetArModel({
    int? page,
    int? size,
  }) = _RequestGetArModel;

  factory RequestGetArModel.fromJson(Map<String, dynamic> json) =>
      _$RequestGetArModelFromJson(json);
}
