import 'package:diamon_rose_app/domain/entities/base/base_item_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/comment_entity/comment_video_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/video_comment_request/request_comment_video_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_config.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class CommentVideoRepository {
  CommentVideoRepository._();

  static final CommentVideoRepository _instance = CommentVideoRepository._();

  static CommentVideoRepository get instance => _instance;

  void GetCommentsByVideoId(
      {required RequestCommentVideoModel requestCommentVideoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<CommentVideoEntity>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.videoComments;

    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<CommentVideoEntity>>(
            url,
            queryParameters: requestCommentVideoModel.toJson(),
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError);
  }

  void createCommentVideo(
      {required CommentVideoEntity commentVideoEntity,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseItemResponseEntity<CommentVideoEntity>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.videoComment;

    HttpRequest.getInstance()
        ?.post<BaseResponseEntity, BaseItemResponseEntity<CommentVideoEntity>>(
            url,
            data: BaseRequestEntity(data: commentVideoEntity.toJson()).encode(),
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError);
  }
}
