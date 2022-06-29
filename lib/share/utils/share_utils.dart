import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  SharedPreferencesUtils._();

  static SharedPreferencesUtils? _instance;

  static Future<SharedPreferencesUtils?> get instance {
    return getInstance();
  }

  static SharedPreferences? sharedPreferences;

  Future? _init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<SharedPreferencesUtils?> getInstance() async {
    if (ValidateUtils.isEmpty(_instance)) {
      _instance = SharedPreferencesUtils._();
      await _instance?._init();
    }
    return _instance;
  }

  static bool checkPrefer() {
    if (ValidateUtils.isEmpty(sharedPreferences)) {
      return true;
    }
    return false;
  }

  bool? hasKey(String key) {
    if (ValidateUtils.isNotEmpty(getKeys())) {
      final Set<String>? keys = getKeys();
      return keys?.contains(key);
    }
    return false;
  }

  Set<String>? getKeys() {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.getKeys();
  }

  Object? get(String key) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.get(key);
  }

  String? getString(String key) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.getString(key);
  }

  Future<bool>? putString(String key, String value) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.setString(key, value);
  }

  bool? getBool(String key) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.getBool(key);
  }

  // ignore: avoid_positional_boolean_parameters
  Future<bool>? putBool(String key, bool value) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.setBool(key, value);
  }

  int? getInt(String key) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.getInt(key);
  }

  Future<bool>? putInt(String key, int value) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.setInt(key, value);
  }

  double? getDouble(String key) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.getDouble(key);
  }

  Future<bool>? putDouble(String key, double value) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.setDouble(key, value);
  }

  List<String>? getStringList(String key) {
    return sharedPreferences?.getStringList(key);
  }

  Future<bool>? putStringList(String key, List<String> value) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.setStringList(key, value);
  }

  dynamic getDynamic(String key) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.get(key);
  }

  Future<bool>? remove(String key) {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.remove(key);
  }

  Future<bool>? clear() {
    if (checkPrefer()) {
      return null;
    }
    return sharedPreferences?.clear();
  }
}
