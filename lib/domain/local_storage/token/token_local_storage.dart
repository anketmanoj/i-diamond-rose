import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';

class TokenLocalStorage {
  static Future<void> saveToken(
      {required String token,
      required String refreshToken,
      required int time}) async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.putString(LocalStorageKeys.tokenStorageKey, token);
    await prefs?.putString(LocalStorageKeys.refreshTokenKey, refreshToken);
    await prefs?.putInt(LocalStorageKeys.tokenTimestamp, time);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferencesUtils.instance;
    final token = prefs?.getString(LocalStorageKeys.tokenStorageKey);
    if (ValidateUtils.isEmpty(token)) {
      return null;
    }
    return token;
  }

  static Future<String?> getRefreshTokenKey() async {
    final prefs = await SharedPreferencesUtils.instance;
    final refreshTokenKey = prefs?.getString(LocalStorageKeys.refreshTokenKey);
    if (ValidateUtils.isEmpty(refreshTokenKey)) {
      return null;
    }
    return refreshTokenKey;
  }

  static Future<bool> hasToken() async {
    final prefs = await SharedPreferencesUtils.instance;
    final token = prefs?.hasKey(LocalStorageKeys.tokenStorageKey);
    final refreshTokenKey = prefs?.hasKey(LocalStorageKeys.refreshTokenKey);
    if (token == null || refreshTokenKey == null) {
      return false;
    }
    return token;
  }

  static Future<bool> deleteToken() async {
    final prefs = await SharedPreferencesUtils.instance;
    final isRemoved = await prefs?.remove(LocalStorageKeys.tokenStorageKey);
    final isRemovedRefreshToken =
        await prefs?.remove(LocalStorageKeys.refreshTokenKey);
    final isRemovedTimestamp =
        await prefs?.remove(LocalStorageKeys.tokenTimestamp);
    if (isRemoved == null ||
        isRemovedTimestamp == null ||
        isRemovedRefreshToken == null) {
      return false;
    }
    return isRemoved && isRemovedTimestamp && isRemovedRefreshToken;
  }

  static Future<int> getTimestamp() async {
    final prefs = await SharedPreferencesUtils.instance;
    final timestamp = prefs?.getInt(LocalStorageKeys.tokenTimestamp);
    if (timestamp == null) {
      return 0;
    }
    return timestamp;
  }
}
