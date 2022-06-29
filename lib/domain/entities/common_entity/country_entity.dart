import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_entity.freezed.dart';
part 'country_entity.g.dart';

@freezed
class CountryEntity with _$CountryEntity {
  const factory CountryEntity({
    @Default(0) int id,
    String? countryName,
  }) = _CountryEntity;

  factory CountryEntity.fromJson(Map<String, dynamic> json) =>
      _$CountryEntityFromJson(json);
}
