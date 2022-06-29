import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/base/base_item_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_get_list_video_model.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_other_content_model.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_register_file_model.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_trigger_rvm_model.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_video_detail_model.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/video_detail_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/register_file_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_profile_entity.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';
import 'package:diamon_rose_app/domain/local_storage/video_local_storage.dart/follow_local_storage.dart';
import 'package:diamon_rose_app/domain/local_storage/video_local_storage.dart/video_local_storage.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:dio/dio.dart';

class VideoRepository {
  VideoRepository._();

  static final VideoRepository _instance = VideoRepository._();

  static VideoRepository get instance => _instance;

  VideoCache _videoCache = VideoCache();

  bool isValid = true;

  void requestUploadVideo(
      {required FormData file,
      required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.uploadVideo;

    HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
        data: file,
        queryParameters: {'path': 'app/video/test/'},
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestRegisterFile(
      {required RequestRegisterFileModel requestRegisterFileModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<RegisterFileEntity> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.registerFile;

    HttpRequest.getInstance()?.post<BaseResponseEntity, RegisterFileEntity>(url,
        data:
            BaseRequestEntity(data: requestRegisterFileModel.toJson()).encode(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestTriggerRVM(
      {required RequestTriggerRVMModel requestTriggerRVMModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.triggerRVM;

    HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
        data: BaseRequestEntity(data: requestTriggerRVMModel.toJson()).encode(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestVideoInfoDetail(
      {required RequestVideoDetailModel requestVideoDetailModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseItemResponseEntity<VideoEntity>> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.getInfoVideo;

    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseItemResponseEntity<VideoEntity>>(url,
            queryParameters: requestVideoDetailModel.toJson(),
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError);
  }

  void requestListVideo(
      {bool isFirst = false,
      required RequestGetListVideoModel requestGetListVideoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<VideoEntity>> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.getListVideoV2;

    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<VideoEntity>>(url,
            queryParameters: requestGetListVideoModel.toJson(),
            onStart: onStart, onSuccess: (response) async {
      late BaseListResponseEntity<VideoEntity> result;
      final List<VideoEntity> videos = [];

      for (final VideoEntity? item in response.items) {
        await _initVideo(
          isFirst,
          videoEntity: item,
        ).whenComplete(() {
          if (isValid == true) {
            getVideoInfo(item!.videoDTO!.id, videoEntity: item);
            videos.add(item);
          }
        });
      }
      if (isFirst == false &&
          (videos.length > 0 ||
              (videos.length == 0 && response.items.length == 0))) {
        result = BaseListResponseEntity<VideoEntity>(items: videos);
        onSuccess(result);
      }

      if (isFirst == true) {
        result = BaseListResponseEntity<VideoEntity>(items: videos);
        onSuccess(result);
      }
    }, onError: onError);
  }

  Future<void> _initVideo(bool? isFirst, {VideoEntity? videoEntity}) async {
    isValid = true;
    try {
      if (videoEntity!.videoDTO!.videoUrl != null) {
        await _videoCache.initVideoToCache(
            url: videoEntity.videoDTO!.videoUrl,
            key: videoEntity.videoDTO!.id.toString());
      } else {
        isValid = false;
      }
    } on Exception catch (e) {
      if (e.toString().contains(INVALID_STATUS_404)) {
        isValid = false;
      }
      isValid = false;
    }
  }

  void requestGetListVideo(
      {required RequestGetListVideoModel requestGetListVideoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<VideoProfileEntity>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.getListVideoForUser +
        requestGetListVideoModel.userId.toString();

    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<VideoProfileEntity>>(
            url,
            queryParameters: {
              "type": requestGetListVideoModel.type,
              "userId": requestGetListVideoModel.userId,
              "page": requestGetListVideoModel.page,
              "size": requestGetListVideoModel.size
            },
            onStart: () {},
            onSuccess: onSuccess,
            onError: (onError) {});
  }

  Future<dynamic> requestGetVideoDetail({
    int? id,
    required HttpRequestCallBack onStart,
    required HttpCallBack<dynamic> onSuccess,
    required HttpCallBack<dynamic> onError,
  }) async {
    final url = "${HttpApi.videoDetail}/${id}";
    await HttpRequest.getInstance()?.get<String, Map<String, dynamic>>(url,
        onStart: onStart, onSuccess: onSuccess, onError: onError);
  }

  Future<dynamic> requestVideoDetail({
    required RequestVideoDetailModel requestVideoDetailModel,
    required HttpRequestCallBack onStart,
    required HttpCallBack<BaseItemResponseEntity<VideoDetailEntity>> onSuccess,
    required HttpCallBack<dynamic> onError,
  }) async {
    final url = "${HttpApi.videoDetail}/${requestVideoDetailModel.id}";
    await HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseItemResponseEntity<VideoDetailEntity>>(
            url,
            queryParameters: requestVideoDetailModel.toJson(),
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError);
  }

  Future<Map<String, dynamic>> getVideoInfo(
    int id, {
    VideoEntity? videoEntity,
  }) async {
    final info = await VideoLocalStorage.videoInfo(id);

    if (info.isEmpty) {
      await saveVideoInfo(
        videoEntity: videoEntity,
      ).whenComplete(() => getVideoInfo(
            id,
          ));
    }
    return info;
  }

  Future<Map<String, dynamic>> getFollowUser(int userId,
      {VideoEntity? videoEntity}) async {
    final info = await FollowLocalStorage.followInfo(userId);
    if (info.isEmpty) {
      await saveFollowInfo(userId, isSubscribe: videoEntity!.isSubscribe)
          .whenComplete(() => getFollowUser(userId, videoEntity: videoEntity));
    }
    return info;
  }

  Future<void> saveFollowInfo(
    int userId, {
    bool? isSubscribe,
  }) async {
    await FollowLocalStorage.saveFollowInfo(
      userId: userId,
      isSubscribe: isSubscribe ?? false,
    );
  }

  Future<void> saveVideoInfo(
      {VideoEntity? videoEntity,
      int? totalComment,
      int? totalFavorite,
      int? totalLike,
      bool? isFavorite,
      bool? isSubscribe,
      bool? isLike}) async {
    await VideoLocalStorage.saveVideoInfo(
      id: videoEntity!.videoDTO!.id,
      userName: videoEntity.userName ?? "",
      displayName: videoEntity.displayName ?? "",
      isFavorite: isFavorite ?? videoEntity.isFavorite,
      isLike: isLike ?? videoEntity.isLike,
      isSubscribe: isSubscribe ?? videoEntity.isSubscribe,
      totalComment: totalComment ?? videoEntity.totalComment,
      totalFavorite: totalFavorite ?? videoEntity.totalFavorite,
      totalLike: totalLike ?? videoEntity.totalLike,
    );
  }

  Future<dynamic> requestGetSaleVideo(
      {required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack<dynamic> onError,
      required RequestOtherContentModel requestParam}) async {
    final url = "${HttpApi.saleVideo}";
    await HttpRequest.getInstance()?.get<String, Map<String, dynamic>>(url,
        queryParameters: requestParam.toJson(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }
}
