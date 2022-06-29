import 'dart:convert';

import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';

class FollowLocalStorage {
  static String followUserKey(int userId) {
    return "${LocalStorageKeys.followUserKey}/$userId";
  }

  static Future<void> saveFollowInfo({
    int? userId,
    bool? isSubscribe,
  }) async {
    final prefs = await SharedPreferencesUtils.instance;
    final json = jsonEncode({
      'userId': userId,
      'isSubscribe': isSubscribe,
    });
    await prefs?.putString(followUserKey(userId!), json);
  }

  static Future<Map<String, dynamic>> followInfo(int userId) async {
    final prefs = await SharedPreferencesUtils.instance;
    final followInfo = prefs?.getString(followUserKey(userId));
    if (followInfo == null) {
      return <String, dynamic>{};
    }

    return jsonDecode(followInfo) as Map<String, dynamic>;
  }

  static Future<void> deleteFollow(int userId) async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.remove(followUserKey(userId));
  }

  static Future<dynamic> getFollow(int userId) async {
    final prefs = await SharedPreferencesUtils.instance;
    final followInfo = prefs?.getString(followUserKey(userId));
    if (followInfo == null) {
      return <String, dynamic>{};
    }

    return followInfo;
  }
}
