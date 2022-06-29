import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_file_entity.freezed.dart';
part 'download_file_entity.g.dart';

@freezed
class DownloadFileEntity with _$DownloadFileEntity {
  const factory DownloadFileEntity({
    String? file,
  }) = _DownloadFileEntity;

  factory DownloadFileEntity.fromJson(Map<String, dynamic> json) =>
      _$DownloadFileEntityFromJson(json);
}
