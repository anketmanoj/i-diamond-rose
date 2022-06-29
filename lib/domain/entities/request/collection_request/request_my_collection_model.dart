import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_my_collection_model.freezed.dart';
part 'request_my_collection_model.g.dart';

@freezed
class RequestMyCollectionModel with _$RequestMyCollectionModel {
  const factory RequestMyCollectionModel({
    required int? type,
    @Default("video") category,
    int? pageSize,
    int? pageNumber,
  }) = _RequestMyCollectionModel;

  factory RequestMyCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$RequestMyCollectionModelFromJson(json);
}
