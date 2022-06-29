// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageableEntity _$_$_PageableEntityFromJson(Map<String, dynamic> json) {
  return _$_PageableEntity(
    sort: json['sort'] == null
        ? null
        : SortEntity.fromJson(json['sort'] as Map<String, dynamic>),
    offset: json['offset'] as int? ?? 0,
    pageNumber: json['pageNumber'] ?? 0,
    pageSize: json['pageSize'] ?? 0,
    paged: json['paged'] as bool? ?? false,
    unPaged: json['unPaged'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_PageableEntityToJson(_$_PageableEntity instance) =>
    <String, dynamic>{
      'sort': instance.sort,
      'offset': instance.offset,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'paged': instance.paged,
      'unPaged': instance.unPaged,
    };
