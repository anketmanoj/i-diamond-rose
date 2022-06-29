// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SortEntity _$_$_SortEntityFromJson(Map<String, dynamic> json) {
  return _$_SortEntity(
    sorted: json['sorted'] as bool? ?? false,
    unsorted: json['unsorted'] as bool? ?? false,
    empty: json['empty'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_SortEntityToJson(_$_SortEntity instance) =>
    <String, dynamic>{
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
      'empty': instance.empty,
    };
