import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_entity.freezed.dart';
part 'sort_entity.g.dart';

@freezed
class SortEntity with _$SortEntity {
  const factory SortEntity({
    @Default(false) bool sorted,
    @Default(false) bool unsorted,
    @Default(false) bool empty,
  }) = _SortEntity;

  factory SortEntity.fromJson(Map<String, dynamic> json) =>
      _$SortEntityFromJson(json);
}
