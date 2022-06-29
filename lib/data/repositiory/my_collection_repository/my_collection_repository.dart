import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/background_entity.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/effect_entity.dart';
import 'package:diamon_rose_app/domain/entities/my_ar_entity/my_ar_entity.dart';
import 'package:diamon_rose_app/domain/entities/purchase_history/purchase_history_model.dart';
import 'package:diamon_rose_app/domain/entities/request/collection_request/request_get_ar_model.dart';
import 'package:diamon_rose_app/domain/entities/request/collection_request/request_my_collection_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_config.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class MyCollectionRepository {
  MyCollectionRepository._();

  static final MyCollectionRepository _instance =
      new MyCollectionRepository._();

  static MyCollectionRepository get instance => _instance;

  Future<List?> getMyAR({
    required HttpRequestCallBack onStart,
    required HttpCallBack<BaseListResponseEntity<MyAREntity>> onSuccess,
    required HttpCallBack<dynamic> onError,
    required RequestGetArModel requestParam,
  }) async {
    final url = HttpApi.getMyAR;
    await HttpRequest.getInstance()
        ?.get<BaseResponseEntity, Map<String, dynamic>>(url,
            queryParameters: requestParam.toJson(),
            onStart: onStart, onSuccess: (data) {
      onSuccess(BaseListResponseEntity.fromJson(data));
    }, onError: onError);
  }

  void requestMyCollections(
      {required RequestMyCollectionModel requestMyCollectionModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<PurchaseHistoryModel>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.purchaseConllection;

    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<PurchaseHistoryModel>>(
            url,
            queryParameters: {
              "category": requestMyCollectionModel.category,
              "page": requestMyCollectionModel.pageNumber,
              "size": requestMyCollectionModel.pageSize
            },
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError);
  }

  Future<List?> getBackground({
    required HttpRequestCallBack onStart,
    required HttpCallBack<BaseListResponseEntity<BackgroundEntity>> onSuccess,
    required HttpCallBack<dynamic> onError,
    required RequestGetArModel requestParam,
  }) async {
    final url = HttpApi.getBackground;
    await HttpRequest.getInstance()
        ?.get<BaseResponseEntity, Map<String, dynamic>>(url,
            queryParameters: requestParam.toJson(),
            onStart: onStart, onSuccess: (data) async {
      await onSuccess(BaseListResponseEntity.fromJson(data));
    }, onError: onError);
  }

  Future<List?> getEffect({
    required HttpRequestCallBack onStart,
    required HttpCallBack<BaseListResponseEntity<EffectEntity>> onSuccess,
    required HttpCallBack<dynamic> onError,
    required RequestGetArModel requestParam,
  }) async {
    final url = HttpApi.getEffect;
    await HttpRequest.getInstance()
        ?.get<BaseResponseEntity, Map<String, dynamic>>(url,
            queryParameters: requestParam.toJson(),
            onStart: onStart, onSuccess: (data) async {
      await onSuccess(BaseListResponseEntity.fromJson(data));
    }, onError: onError);
  }

  Future<List?> deleteAr({
    required int id,
    required HttpRequestCallBack onStart,
    required HttpCallBack<dynamic> onSuccess,
    required HttpCallBack<List<String>>? onError,
  }) async {
    final url = '${HttpApi.myAR}/$id';
    await HttpRequest.getInstance()?.delete<BaseResponseEntity<String>, dynamic>(url,
        onStart: onStart,
        onSuccess: onSuccess,
        reLoginCallBack: (response) {},
        onError: onError);
  }
}
