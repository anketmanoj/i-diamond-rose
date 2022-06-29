import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class ImageCacge {
  BaseCacheManager defaultCacheManager = DefaultCacheManager();
  Stream<FileResponse> getFileStream(String url) {
    return defaultCacheManager.getFileStream(
      url,
    );
  }
}