import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_file_entity.freezed.dart';
part 'register_file_entity.g.dart';

@freezed
class RegisterFileEntity with _$RegisterFileEntity {
  const factory RegisterFileEntity({
    String? s3FolderKey
  }) = _RegisterFileEntity;

  factory RegisterFileEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisterFileEntityFromJson(json);
}
