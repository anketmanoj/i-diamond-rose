import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_entity.freezed.dart';
part 'upload_file_entity.g.dart';

@freezed
class UploadFileEntity with _$UploadFileEntity {
  const factory UploadFileEntity({
    String? key,
    String? url,
  }) = _UploadFileEntity;

  factory UploadFileEntity.fromJson(Map<String, dynamic> json) =>
      _$UploadFileEntityFromJson(json);
}
