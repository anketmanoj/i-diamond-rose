import 'package:diamon_rose_app/share/utils/share_utils.dart';

class LocalStorageKeys {
  /// keyAppId
  static final keyAppId = 'app_id';

  // first launch
  static final firstLaunchKey = 'firstLaunchKey';

  // token
  static final tokenStorageKey = "tokenStorageKey";

  // token
  static final refreshTokenKey = "refreshTokenKey";

  // token timestamp
  static final tokenTimestamp = "tokenTimestamp";

  /// device Token
  static final deviceTokenKey = 'deviceTokenKey';

  /// device Token
  static final accountInfoKey = 'accountInfoKey';

  ///video infomation
  static final videoInfoKey = 'videoInfoKey';

  ///follow infomation
  static final followUserKey = 'followUserKey';


  static Future<bool?> clearAll() async {
    final prefs = await SharedPreferencesUtils.instance;
    return prefs?.clear();
  }


  static late bool isEditProfile = false;

  static late Map<String, String?> currentVideoOwner = <String, String>{
    "type": "",
    "userId": "",
  };

  static late bool isTapFCM = false;
}
