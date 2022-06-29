import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/block_item/block_item_model.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class BlockUserRepository {
  BlockUserRepository._();

  static final BlockUserRepository _instance = BlockUserRepository._();

  static BlockUserRepository get instance => _instance;

  void requestGetBlockList(
      {required int page,
      required int size,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<BlockUserItemModel>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.getListBlockUser}?page=$page&size=$size";

    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<BlockUserItemModel>>(
      url,
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  void requestUnblock(
      {required int id,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.unblockUser}$id";

    HttpRequest.getInstance()?.delete<BaseResponseEntity<String>, dynamic>(
      url,
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
      reLoginCallBack: (response) {},
    );
  }
}
