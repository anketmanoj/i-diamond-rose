import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_device_token_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';
import 'package:diamon_rose_app/domain/local_storage/device_token_local_storage/device_token_local_storage.dart';
import 'package:diamon_rose_app/share/utils/app_platform.dart';
import 'package:flutter/foundation.dart';

mixin DeviceTokenRepository {
  ///Todo(registerDeviceToken)
  static Future<void> registerDeviceToken(
      {required RequestDeviceTokenModel requestDeviceTokenModel}) async {
    {
      final url = HttpApi.updateDeviceToken;
      await HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
          data: BaseRequestEntity(data: requestDeviceTokenModel.toJson())
              .encode(),
          onError: (List<String> response) => print,
          onStart: () {},
          onSuccess: (response) => print);
    }
  }

  ///Todo(unregisterDeviceToken)
  static Future<void> unregisterDeviceToken() async {}

  Future<void> saveDeviceToken(String deviceToken) async {
    await DeviceTokenLocalStorage.save(deviceToken);
  }

  static DeviceTokenPlatform? deviceTokenPlatform() {
    DeviceTokenPlatform? platformParam;
    if (AppPlatform.isAndroid) {
      platformParam = DeviceTokenPlatform.gcm;
    } else if (AppPlatform.isIOS) {
      platformParam = kDebugMode
          ? DeviceTokenPlatform.apnsSandbox
          : DeviceTokenPlatform.apns;
    }
    return platformParam;
  }
}

enum DeviceTokenPlatform {
  apns,
  apnsSandbox,
  gcm,
  wns,
  macOs,
  macOsSandbox,
}

const _deviceTokenPlatformEnumMap = {
  DeviceTokenPlatform.apns: 'APNS',
  DeviceTokenPlatform.apnsSandbox: 'APNS_SANDBOX',
  DeviceTokenPlatform.gcm: 'GCM',
  DeviceTokenPlatform.wns: 'WNS',
  DeviceTokenPlatform.macOs: 'MACOS',
  DeviceTokenPlatform.macOsSandbox: 'MACOS_SANDBOX',
};

/// enum -> String extension
extension DeviceTokenPlatformString on DeviceTokenPlatform {
  String? asString() => _deviceTokenPlatformEnumMap[this];
}
