import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/video_setting_request/request_video_setting_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_config.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';
import 'package:diamon_rose_app/domain/http/network_config/network_config.dart';

class VideoSettingRepository {
  VideoSettingRepository._();

  static final VideoSettingRepository _instance = VideoSettingRepository._();

  static VideoSettingRepository get instance => _instance;

  Future<dynamic> getVideoSetting(
      {required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack<dynamic> onError,
      Map<String, dynamic>? requestParam}) async {
    final url = HttpApi.getVideoSetting;
    await HttpRequest.getInstance()?.get<String, Map<String, dynamic>>(url,
        queryParameters: requestParam,
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void postVideoSettings({
    required HttpRequestCallBack onStart,
    required HttpCallBack<dynamic> onSuccess,
    required HttpCallBack<dynamic> onError,
    required Map<String, dynamic> requestParam,
    required RequestVideoSettingModel data,
  }) {
    final url = NetworkConfig.getBaseUrl + HttpApi.getVideoSetting;
    HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
        data: BaseRequestEntity(data: data.toJson()).encode(),
        queryParameters: requestParam,
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }
}
