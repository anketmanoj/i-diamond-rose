// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_register_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestRegisterFileModel _$_$_RequestRegisterFileModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestRegisterFileModel(
    fileType: json['fileType'] as String?,
    filename: json['filename'] as String?,
    videoMatting: json['videoMatting'] as bool,
  );
}

Map<String, dynamic> _$_$_RequestRegisterFileModelToJson(
        _$_RequestRegisterFileModel instance) =>
    <String, dynamic>{
      'fileType': instance.fileType,
      'filename': instance.filename,
      'videoMatting': instance.videoMatting,
    };
