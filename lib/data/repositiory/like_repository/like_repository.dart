import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/event_video_request/event_video_model.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class LikeRepository {
  LikeRepository._();

  static final LikeRepository _instance = LikeRepository._();

  static LikeRepository get instance => _instance;

  void requestLikeVideo(
      {bool? isLiked = false,
      required EventVideoModel eventVideoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = isLiked == true
        ? HttpApi.likeVideo
        : "${HttpApi.likeVideo}/${eventVideoModel.id}";

    if (isLiked == true) {
      HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(
        url,
        queryParameters: eventVideoModel.toJson(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
      );
    } else {
      HttpRequest.getInstance()?.delete<BaseResponseEntity, dynamic>(
        url,
        queryParameters:
            BaseRequestEntity(data: eventVideoModel.toJson()).encode(),
        reLoginCallBack: (response) {},
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
      );
    }
  }

  void requestFavoriteVideo(
      {bool? isFavorite = false,
      required EventVideoModel eventVideoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = isFavorite == true
        ? HttpApi.favoriteVideo
        : "${HttpApi.favoriteVideo}/${eventVideoModel.id}";

    if (isFavorite == true) {
      HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(
        url,
        queryParameters: eventVideoModel.toJson(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
      );
    } else {
      HttpRequest.getInstance()?.delete<BaseResponseEntity, dynamic>(
        url,
        queryParameters: eventVideoModel.toJson(),
        reLoginCallBack: (response) {},
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
      );
    }
  }

  Future<void> getTotalInfomationVideo(
      {required bool isLike,
      required EventVideoModel eventVideoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<EventVideoModel> onSuccess,
      required HttpCallBack<List<String>>? onError}) async {
    final url = isLike == false ? HttpApi.favoriteVideos : HttpApi.likeVideos;

    await HttpRequest.getInstance()?.get<BaseResponseEntity, EventVideoModel>(
        url,
        queryParameters: eventVideoModel.toJson(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }
}
