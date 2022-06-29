import 'package:freezed_annotation/freezed_annotation.dart';

part 'font_entity.freezed.dart';
part 'font_entity.g.dart';

@freezed
class FontEntity with _$FontEntity {
  const factory FontEntity({
    @Default(0) int id,
    String? fontUrl,
    String? fontName,
    @Default(0) int isType,
    @Default(0.0) double price,
    String? createdAt,
    @Default(0) int updateBy,
    String? updatedAt,
  }) = _FontEntity;

  factory FontEntity.fromJson(Map<String, dynamic> json) =>
      _$FontEntityFromJson(json);
}
