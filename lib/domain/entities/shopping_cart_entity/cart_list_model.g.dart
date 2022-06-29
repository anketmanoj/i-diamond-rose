// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartListModel _$_$_CartListModelFromJson(Map<String, dynamic> json) {
  return _$_CartListModel(
    listItem: (json['listItem'] as List<dynamic>?)
        ?.map((e) => ShoppingCartModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalElement: json['totalElement'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_CartListModelToJson(_$_CartListModel instance) =>
    <String, dynamic>{
      'listItem': instance.listItem,
      'totalElement': instance.totalElement,
    };
