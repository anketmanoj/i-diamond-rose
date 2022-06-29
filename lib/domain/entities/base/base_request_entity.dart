import 'dart:convert';

class BaseRequestEntity {
  BaseRequestEntity({this.data});

  dynamic encode() {
    return jsonEncode(data);
  }

  Map<String, dynamic>? data;
}
