import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';

class FirstLaunchLocalStorage {
  static Future<void> launched() async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.putBool(LocalStorageKeys.firstLaunchKey, false);
  }

  static Future<bool> get() async {
    final prefs = await SharedPreferencesUtils.instance;
    return prefs?.getBool(LocalStorageKeys.firstLaunchKey) ?? true;
  }
}
