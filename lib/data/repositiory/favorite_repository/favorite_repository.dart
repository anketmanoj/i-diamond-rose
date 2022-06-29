import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/favorite_entity/favorite_model.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class FavoriteRepository {
  FavoriteRepository._();

  static final FavoriteRepository _instance = FavoriteRepository._();

  static FavoriteRepository get instance => _instance;

  Future<void> getFavoriteVideos(
      {required int page,
        required int size,
        required String sort,
        required HttpRequestCallBack onStart,
        required HttpCallBack<BaseListResponseEntity<FavoriteModel>>
        onSuccess,
        required HttpCallBack<List<String>>? onError}) async {
    final url = HttpApi.listFavorite;

    await HttpRequest.getInstance()?.get<BaseResponseEntity,
        BaseListResponseEntity<FavoriteModel>>(
      url,
      queryParameters: {
        "page": page,
        "size": page,
        "sort": "$sort,DESC",
      },
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }
}
