import 'package:diamon_rose_app/domain/http/factory/entity_factory.dart';

class BaseResponseEntity<T> {
  BaseResponseEntity(
      {required this.data, required this.status, required this.messages});

  BaseResponseEntity.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    messages = json['messages']?.cast<String>();
    data = json['data'] != null
        ? EntityFactory.generateOBJ<T>(json['data']) as T
        : null;
  }

  bool status = false;
  List<String> messages = [];
  T? data = null;
}
