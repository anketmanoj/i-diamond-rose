import 'package:diamon_rose_app/data/config/environments/environments.dart';
import 'package:diamon_rose_app/domain/http/http_config.dart';
import 'package:diamon_rose_app/domain/http/interceptor/logging_interceptor.dart';
import 'package:diamon_rose_app/domain/http/network_config/network_config.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

class HttpRequest {
  HttpRequest({bool cached = false}) {
    final options = BaseOptions(
        connectTimeout: NetworkConfig.connectionTimeout,
        receiveTimeout: NetworkConfig.receiveTimeout,
        sendTimeout: NetworkConfig.sendTimeout,
        baseUrl: NetworkConfig.getBaseUrl,
        // will not throw errors
        validateStatus: (status) => true,
        responseType: ResponseType.json,
        headers: httpHeaders);

    final dio = new Dio(options);
    if (cached)
      dio.interceptors.add(DioCacheManager(CacheConfig()).interceptor);

    if (Environments.isDevelopment) {
      dio.interceptors
          .add(LoggingInterceptor(requestBody: true, responseBody: true));
    }

    httpConfig = HttpConfig(dio: dio);
  }

  Map<String, dynamic> httpHeaders = {
    'Accept': 'application/json,*/*',
    'Content-Type': 'application/json',
  };

  static HttpRequest? instance;
  static HttpConfig? httpConfig;

  static HttpConfig? getInstance() {
    if (ValidateUtils.isEmpty(instance)) {
      instance = HttpRequest();
    }
    return _getHttpConfig();
  }

  static HttpConfig? _getHttpConfig() {
    return httpConfig;
  }
}
