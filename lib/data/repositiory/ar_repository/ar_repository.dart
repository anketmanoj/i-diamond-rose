import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/my_ar_entity/get_ar_param_entity.dart';
import 'package:diamon_rose_app/domain/entities/my_ar_entity/my_ar_entity.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class ARRepository {
  ARRepository._();

  static final ARRepository _instance = ARRepository._();

  static ARRepository get instance => _instance;

  void getARList({
    required GetARParamEntity queryParameters,
    required HttpRequestCallBack onStart,
    required HttpCallBack<BaseListResponseEntity<MyAREntity>> onSuccess,
    required HttpCallBack<List<String>>? onError,
  }) {
    final url = HttpApi.getMyAR;
    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<MyAREntity>>(url,
            queryParameters: queryParameters.toJson(),
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError);
  }
}
