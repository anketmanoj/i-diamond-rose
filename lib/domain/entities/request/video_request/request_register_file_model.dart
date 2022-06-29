import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_register_file_model.freezed.dart';
part 'request_register_file_model.g.dart';
@freezed
class RequestRegisterFileModel with _$RequestRegisterFileModel {
  const factory RequestRegisterFileModel({
    required String? fileType,
    required String? filename,
    required bool videoMatting,
  }) = _RequestRegisterFileModel;

  factory RequestRegisterFileModel.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterFileModelFromJson(json);
}