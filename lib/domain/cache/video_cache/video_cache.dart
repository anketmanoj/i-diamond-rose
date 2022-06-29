import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class VideoCache {
  DefaultCacheManager defaultCacheManager = DefaultCacheManager();

  Stream<FileResponse> getFileStream(String url) {
    return defaultCacheManager.getFileStream(
      url,
    );
  }

  Future<FileInfo> initVideoToCache(
      {String? url, String? key, bool isUpdate = false}) async {
    if (key != null) {
      final bool checkFileExist = await checkPathVideo(key);
      if (checkFileExist == false) {
        return defaultCacheManager.downloadFile(url!, key: key);
      } else {
        return getFilePathFromCache(key);
      }
    }
    return defaultCacheManager.downloadFile(url!);
  }

  Stream<FileResponse> getImageFile({String? url, String? key}) {
    return defaultCacheManager.getImageFile(url!, key: key);
  }

  Future deleteImageFromCache(
      {required String url, required String key}) async {
    await defaultCacheManager.removeFile(key);
    //await CachedNetworkImage.evictFromCache(url, );
    await CachedNetworkImage.evictFromCache(url, cacheKey: key);
    print('deleteImageFromCache: Done');
  }

  Future<void> putFile({required String url, required String? key}) async {
    await initVideoToCache(url: url, key: key).then((value) async {
      print("initVideoToCache: Done");
      await defaultCacheManager.putFile(url, value.file.readAsBytesSync(),
          key: key, fileExtension: "jpg");
    });
  }

  Future<FileInfo> downloadFile(String url) async {
    return downloadFile(url).then(coverFileResponseToFileInfo);
  }

  FileInfo coverFileResponseToFileInfo(FileResponse fileResponse) {
    return fileResponse as FileInfo;
  }

  Future<bool> checkPathVideo(String key) async {
    final FileInfo? file =
        await defaultCacheManager.getFileFromCache(key, ignoreMemCache: true);
    if (file != null) {
      return true;
    }
    return false;
  }

  Future<FileInfo> getFilePathFromCache(String key) async {
    FileInfo? fileInfo;
    fileInfo = await defaultCacheManager.getFileFromCache(key);
    return fileInfo!;
  }

  void removeFile(String url) {
    DefaultCacheManager().removeFile(url).then((value) {});
  }

  void clearCache() {
    DefaultCacheManager().emptyCache().whenComplete(() {
      return;
    });
  }
}
