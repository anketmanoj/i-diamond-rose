import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/common_entity/country_entity.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class CommonRepository {
  CommonRepository._();

  static final CommonRepository _instance = CommonRepository._();

  static CommonRepository get instance => _instance;

  void requestCountry(
      {required HttpRequestCallBack onStart,
      required HttpCallBack<CountryEntity> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.getContries;

    HttpRequest.getInstance()?.get<BaseResponseEntity, CountryEntity>(url,
        data: [], onStart: onStart, onSuccess: onSuccess, onError: onError);
  }

  void requestCountryList(
      {required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<CountryEntity>> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.getContries;
    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<CountryEntity>>(url,
            onStart: onStart, onSuccess: onSuccess, onError: onError);
  }
}
