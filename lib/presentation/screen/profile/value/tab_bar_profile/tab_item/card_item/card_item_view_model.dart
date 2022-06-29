import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:get/get.dart';

class CardItemViewModel extends GetxController {
  VideoCache cacheManager = VideoCache();

  Future<void> initThumbailToCache(
      {required String url, required int videoId}) async {
    await cacheManager.initVideoToCache(
        url: url, key: "$THUMBNAIL_IMAGE_KEY/$videoId");
  }
}
