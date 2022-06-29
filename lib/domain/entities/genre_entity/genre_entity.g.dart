// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenreEntity _$_$_GenreEntityFromJson(Map<String, dynamic> json) {
  return _$_GenreEntity(
    id: json['id'] as int? ?? 0,
    code: json['code'] as String?,
    isSelected: json['isSelected'] as bool?,
    label: json['label'] as String? ?? '',
    position: json['position'] as int?,
  );
}

Map<String, dynamic> _$_$_GenreEntityToJson(_$_GenreEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'isSelected': instance.isSelected,
      'label': instance.label,
      'position': instance.position,
    };
