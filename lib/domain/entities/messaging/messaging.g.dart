// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messaging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Messaging _$_$_MessagingFromJson(Map<String, dynamic> json) {
  return _$_Messaging(
    notification: _parseNotification(json['notification']),
    data: _parseData(json['data']),
  );
}

Map<String, dynamic> _$_$_MessagingToJson(_$_Messaging instance) =>
    <String, dynamic>{
      'notification': instance.notification,
      'data': instance.data,
    };
