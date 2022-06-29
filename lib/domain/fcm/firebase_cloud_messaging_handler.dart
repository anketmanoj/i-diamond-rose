import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:diamon_rose_app/data/repositiory/account_repository/account_repository.dart';
import 'package:diamon_rose_app/data/repositiory/device_token/device_token_repository.dart';
import 'package:diamon_rose_app/domain/entities/messaging/messaging.dart';
import 'package:diamon_rose_app/domain/entities/messaging/messaging_data.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_device_token_model.dart';
import 'package:diamon_rose_app/share/utils/app_platform.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Latest message
Messaging? lastMessage;

class FirebaseCloudMessagingHandler extends ChangeNotifier {
  FirebaseCloudMessagingHandler({
    required this.localy,
    required this.onTapMessage,
  });

  /// Locally to retrieve the translated string
  final Localy localy;

  ///Todo(param): yet undetermined
  /// This is the callback when you tap the message.
  final Function(MessagingData?) onTapMessage;

  static const Duration _tokenRefreshPeriod = Duration(hours: 24);

  static Timer? _tokenRefreshTimer;

  static void cancelTokenRefreshTimer() => _tokenRefreshTimer?.cancel();

  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    if (!AppPlatform.isMobile) {
      debugPrint(
          'Flutter Web/Mac/Windows/Linux can not use FlutterLocalNotificationsPlugin');
      return;
    }

    try {
      await initMessaging();
    } on Exception catch (_) {}
  }

  Future<void> initMessaging() async {
    if (AppPlatform.isIOS) {
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        sound: true,
      );
    }

    FirebaseMessaging.onMessage.listen((message) async {
      debugPrint('onMessage: ${message.notification} >>> ${message.data}');

      if (!AppPlatform.isIOS) {
        await _handleForegroundMessage(message);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      debugPrint('onMessageOpenedApp: ${message.data}');
      onTapMessage(Messaging.fromRemoteMessage(message).data);
    });

    await _flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        android:
            AndroidInitializationSettings('mipmap/ic_notification_default'),
        iOS: IOSInitializationSettings(),
        macOS: MacOSInitializationSettings(),
      ),
      onSelectNotification: (String? payload) async {
        if (ValidateUtils.isEmpty(payload)) {
          return;
        }
        debugPrint('selectNotification! >> $payload');
        onTapMessage(MessagingData.fromJson(
            jsonDecode(payload!) as Map<String, dynamic>));
      },
    );

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      debugPrint('initialMessage: ${initialMessage.data}');
      onTapMessage(Messaging.fromRemoteMessage(initialMessage).data);
    }
  }

  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    final remoteMessage = Messaging.fromRemoteMessage(message);
    lastMessage = remoteMessage;
    notifyListeners();

    await _showNotification(
        localy, _flutterLocalNotificationsPlugin, remoteMessage);
  }

  static Future<void> _showNotification(
      Localy? localy,
      FlutterLocalNotificationsPlugin localNotificationsPlugin,
      Messaging messaging) async {
    if (ValidateUtils.isEmpty(messaging.notification)) {
      return;
    }

    try {
      await localNotificationsPlugin.show(
        Random().nextInt(2147483647),
        messaging.notification?.title,
        messaging.notification?.body,
        _createNewMessageDetails(localy),
        payload: jsonEncode(messaging.data),
      );
      // ignore: avoid_catches_without_on_clauses
    } on Exception catch (_) {}
  }

  static NotificationDetails _createNewMessageDetails(Localy? localy) =>
      NotificationDetails(
        android: AndroidNotificationDetails(
          '',
          'Chat notifications',
          'We will inform you of new messages',
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'New message',
          styleInformation: const BigTextStyleInformation(''),
        ),
        macOS: const MacOSNotificationDetails(),
      );

  /// Execute the token reacquisition timer.
  static void updateDeviceTokenTimer() {
    cancelTokenRefreshTimer();
    _tokenRefreshTimer = Timer(_tokenRefreshPeriod, () async {
      await updateDeviceToken();
      updateDeviceTokenTimer();
    });
  }

  static Future<void> updateDeviceToken() async {
    String? token;
    if (AppPlatform.isMobile) {
      token = await FirebaseMessaging.instance.getToken();
      debugPrint('deviceToken >>> $token');
    } else {
      debugPrint('deviceToken only support Android/iOS Device');
    }

    if (ValidateUtils.isEmpty(token)) {
      debugPrint('No Token(May be a simulator or connection error)');
      return;
    }

    final platformParam = DeviceTokenRepository.deviceTokenPlatform();
    if (ValidateUtils.isEmpty(platformParam)) {
      debugPrint('Unsupported Platform >>> ${Platform.operatingSystem}');
      return;
    }

    try {
      final appId = await AccountRepository.instance.appId;
      if (ValidateUtils.isEmpty(appId)) {
        throw Exception('No appId');
      }

      await DeviceTokenRepository.registerDeviceToken(
          requestDeviceTokenModel:
              RequestDeviceTokenModel(deviceToken: token ?? ""));
      await AccountRepository.instance.saveDeviceToken(token);
      debugPrint('Success updateDeviceToken');
    } on Exception {
      debugPrint('Failure updateDeviceToken');
    }
  }

  static Future<void> deleteDeviceToken() async {
    try {
      await FirebaseMessaging.instance.deleteToken();
      debugPrint('Success deleteDeviceToken');
    } on Exception {
      debugPrint('Failure deleteDeviceToken');
    }
  }

  static void clear() {
    lastMessage = null;
  }
}
