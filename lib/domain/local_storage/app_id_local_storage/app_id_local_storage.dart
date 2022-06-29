import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';
import 'package:uuid/uuid.dart';

/// Link the app ID and preferences.
class AppIdLocalStorage {
  static Future<void> generate() async {
    final prefs = await SharedPreferencesUtils.instance;
    if (prefs?.hasKey(LocalStorageKeys.keyAppId) == false) {
      await prefs?.putString(LocalStorageKeys.keyAppId, const Uuid().v4());
    }
  }

  static Future<String?> get() async {
    final prefs = await SharedPreferencesUtils.instance;
    return prefs?.getString(LocalStorageKeys.keyAppId);
  }

  static Future<void> delete() async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.remove(LocalStorageKeys.keyAppId);
  }
}
