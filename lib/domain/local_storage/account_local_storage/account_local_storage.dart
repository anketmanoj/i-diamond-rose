import 'dart:convert';

import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';

class AccountLocalStorage {
  static Future<void> saveAccountInfo(
      {required String userName,
      required String email,
      required int userId,
      required String uid,
      required String avatar,
      required String displayName,
      required String selfIntroduce,
      required List<String> roles,
      required String mobile,
      required int countryId,
      String? dateOfBirth,
      String? tiktokUrl,
      String? twitterUrl,
      String? instagramUrl,
      String? facebookUrl,
      int? gender,
      bool? isOfficial,
      String? realName,
      String? coverUrl}) async {
    final prefs = await SharedPreferencesUtils.instance;
    final json = jsonEncode({
      'userName': userName,
      'email': email,
      'avatar': avatar,
      'userId': userId,
      'displayName': displayName,
      'uid': uid,
      'selfIntroduce': selfIntroduce,
      'roles': roles,
      'mobile': mobile,
      'countryId': countryId,
      'dateOfBirth': dateOfBirth,
      'tiktokUrl': tiktokUrl,
      'twitterUrl': twitterUrl,
      'instagramUrl': instagramUrl,
      'facebookUrl': facebookUrl,
      'gender': gender,
      'isOfficial': isOfficial,
      'realName': realName,
      'coverUrl': coverUrl,
    });
    await prefs?.putString(LocalStorageKeys.accountInfoKey, json);
  }

  static Future<Map<String, dynamic>> accountInfo() async {
    final prefs = await SharedPreferencesUtils.instance;
    final accountInfo = prefs?.getString(LocalStorageKeys.accountInfoKey);
    if (accountInfo == null) {
      return <String, dynamic>{};
    }

    return jsonDecode(accountInfo) as Map<String, dynamic>;
  }

  static Future<void> deleteAccountInfo() async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.remove(LocalStorageKeys.accountInfoKey);
  }

  static Future<dynamic> getAccountInfo() async {
    final prefs = await SharedPreferencesUtils.instance;
    final accountInfo = prefs?.getString(LocalStorageKeys.accountInfoKey);
    if (accountInfo == null) {
      return <String, dynamic>{};
    }

    return accountInfo;
  }
}
