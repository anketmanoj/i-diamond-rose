import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';

class DeviceTokenLocalStorage {
  static Future<void> save(String deviceToken) async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.putString(LocalStorageKeys.deviceTokenKey, deviceToken);
  }

  static Future<String?> get() async {
    final prefs = await SharedPreferencesUtils.instance;
    return prefs?.getString(LocalStorageKeys.deviceTokenKey);
  }

  static Future<void> delete() async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.remove(LocalStorageKeys.deviceTokenKey);
  }
}
