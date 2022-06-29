import 'package:diamon_rose_app/domain/entities/messaging/messaging_data.dart';
import 'package:diamon_rose_app/domain/entities/messaging/messaging_notification.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messaging.freezed.dart';
part 'messaging.g.dart';

@freezed
class Messaging with _$Messaging {
  const factory Messaging(
      {@JsonKey(fromJson: _parseNotification)
          MessagingNotification? notification,
      @JsonKey(fromJson: _parseData)
          MessagingData? data}) = _Messaging;

  factory Messaging.fromJson(Map<String, dynamic> json) =>
      _$MessagingFromJson(json);

  factory Messaging.fromRemoteMessage(RemoteMessage message) => Messaging(
        notification: MessagingNotification(
          title: message.notification?.title,
          body: message.notification?.body,
        ),
        data: MessagingData.fromJson(message.data),
      );
}

/// Notificationをパースします。(アプリ中断時の通知タップで必要な処理)
MessagingNotification _parseNotification(dynamic json) {
  Map<String, dynamic> jsonMap;
  if (json is Map<dynamic, dynamic>) {
    jsonMap = Map<String, dynamic>.from(json);
  } else {
    jsonMap = json as Map<String, dynamic>;
  }
  return MessagingNotification.fromJson(jsonMap);
}

MessagingData _parseData(dynamic json) {
  Map<String, dynamic> jsonMap;
  if (json is Map<dynamic, dynamic>) {
    jsonMap = Map<String, dynamic>.from(json);
  } else {
    jsonMap = json as Map<String, dynamic>;
  }
  return MessagingData.fromJson(jsonMap);
}
