// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_my_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestMyCollectionModel _$_$_RequestMyCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _$_RequestMyCollectionModel(
    type: json['type'] as int?,
    category: json['category'] ?? 'video',
    pageSize: json['pageSize'] as int?,
    pageNumber: json['pageNumber'] as int?,
  );
}

Map<String, dynamic> _$_$_RequestMyCollectionModelToJson(
        _$_RequestMyCollectionModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'category': instance.category,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
    };
