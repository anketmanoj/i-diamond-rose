import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messaging_notification.freezed.dart';
part 'messaging_notification.g.dart';

@freezed
class MessagingNotification with _$MessagingNotification {
  const factory MessagingNotification({
    String? title,
    String? body,
  }) = _MessagingNotification;

  factory MessagingNotification.fromJson(Map<String, dynamic> json) =>
      _$MessagingNotificationFromJson(json);
}
