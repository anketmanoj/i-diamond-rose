import 'dart:convert';

import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';

class VideoLocalStorage {
  static String videoKey(int id) {
    return "${LocalStorageKeys.videoInfoKey}/$id";
  }

  static Future<void> saveVideoInfo({
    int? id,
    String? userName,
    String? displayName,
    String? videoUrl,
    bool? isLike,
    bool? isSubscribe,
    bool? isFavorite,
    int? totalLike,
    int? totalFavorite,
    int? totalComment,
  }) async {
    final prefs = await SharedPreferencesUtils.instance;
    final json = jsonEncode({
      'id': id,
      'userName': userName,
      'displayName': displayName,
      'videoUrl': videoUrl,
      'isLike': isLike,
      'isSubscribe': isSubscribe,
      'isFavorite': isFavorite,
      'totalLike': totalLike,
      'totalFavorite': totalFavorite,
      'totalComment': totalComment,
    });
    await prefs?.putString(videoKey(id!), json);
  }

  static Future<Map<String, dynamic>> videoInfo(int id) async {
    final prefs = await SharedPreferencesUtils.instance;
    final videoInfo = prefs?.getString(videoKey(id));
    if (videoInfo == null) {
      return <String, dynamic>{};
    }

    return jsonDecode(videoInfo) as Map<String, dynamic>;
  }

  static Future<void> deletevideoInfo(int id) async {
    final prefs = await SharedPreferencesUtils.instance;
    await prefs?.remove(videoKey(id));
  }

  static Future<dynamic> getvideoInfo(int id) async {
    final prefs = await SharedPreferencesUtils.instance;
    final videoInfo = prefs?.getString(videoKey(id));
    if (videoInfo == null) {
      return <String, dynamic>{};
    }

    return videoInfo;
  }
}
