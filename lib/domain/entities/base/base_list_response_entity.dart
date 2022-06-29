import 'package:diamon_rose_app/domain/entities/pageable_entity/sort_entity.dart';
import 'package:diamon_rose_app/domain/http/factory/entity_factory.dart';

class BaseListResponseEntity<T> {
  BaseListResponseEntity({required this.items});

  BaseListResponseEntity.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = (json['items'] as List)
          .map((item) => EntityFactory.generateOBJ<T>(item) as T)
          .toList();
    }
    final pageable = json['pageable'];
    if (pageable != null) {
      if (pageable['sort'] != null) {
        sortEntity = SortEntity.fromJson(pageable['sort']);
      }
      totalPage = pageable['totalPage'] ?? 0;
      totalElements = pageable['totalElements'] ?? 0;
      first = pageable['first'] ?? false;
      last = pageable['last'] ?? false;
      pageSize = pageable['pageSize'] ?? 0;
      pageNumber = pageable['pageNumber'] ?? 0;
      numberOfElements = pageable['numberOfElements'] ?? 0;
    }
  }

  late List<T?> items;
  late int totalPage;
  late int totalElements;
  late bool first;
  late bool last;
  late int pageSize;
  late int pageNumber;
  late SortEntity sortEntity;
  late int numberOfElements;
}
