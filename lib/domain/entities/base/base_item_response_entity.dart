import 'package:diamon_rose_app/domain/http/factory/entity_factory.dart';

class BaseItemResponseEntity<T> {
  BaseItemResponseEntity({required this.item});

  BaseItemResponseEntity.fromJson(Map<String, dynamic> json) {
    if (json['item'] != null) {
      item = EntityFactory.generateOBJ<T>(json['item']) as T;
    }
  }

  late T item;
}
