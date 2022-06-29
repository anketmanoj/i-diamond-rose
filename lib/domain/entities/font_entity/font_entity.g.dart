// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FontEntity _$_$_FontEntityFromJson(Map<String, dynamic> json) {
  return _$_FontEntity(
    id: json['id'] as int? ?? 0,
    fontUrl: json['fontUrl'] as String?,
    fontName: json['fontName'] as String?,
    isType: json['isType'] as int? ?? 0,
    price: (json['price'] as num?)?.toDouble() ?? 0.0,
    createdAt: json['createdAt'] as String?,
    updateBy: json['updateBy'] as int? ?? 0,
    updatedAt: json['updatedAt'] as String?,
  );
}

Map<String, dynamic> _$_$_FontEntityToJson(_$_FontEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fontUrl': instance.fontUrl,
      'fontName': instance.fontName,
      'isType': instance.isType,
      'price': instance.price,
      'createdAt': instance.createdAt,
      'updateBy': instance.updateBy,
      'updatedAt': instance.updatedAt,
    };
