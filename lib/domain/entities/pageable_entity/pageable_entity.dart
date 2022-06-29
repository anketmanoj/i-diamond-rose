import 'package:diamon_rose_app/domain/entities/pageable_entity/sort_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageable_entity.freezed.dart';
part 'pageable_entity.g.dart';

@freezed
class PageableEntity with _$PageableEntity {
  const factory PageableEntity({
    SortEntity? sort,
    @Default(0) int offset,
    @Default(0) pageNumber,
    @Default(0) pageSize,
    @Default(false) bool paged,
    @Default(false) bool unPaged,
  }) = _PageableEntity;

  factory PageableEntity.fromJson(Map<String, dynamic> json) =>
      _$PageableEntityFromJson(json);
}
