import 'dart:io';

import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/token_entity.dart';
import 'package:diamon_rose_app/domain/http/exception/base_error.dart';
import 'package:diamon_rose_app/domain/http/exception/exception_handle.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_type.dart';
import 'package:diamon_rose_app/domain/http/network_config/network_config.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/domain/local_storage/token/token_local_storage.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/network_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:dio/dio.dart';

typedef HttpRequestCallBack = dynamic Function();
typedef HttpCallBack<V> = dynamic Function(V response);

class HttpConfig {
  HttpConfig({required this.dio});

  Dio dio;

  Future<Stream> get<T, G>(
    String url, {
    dynamic queryParameters,
    dynamic data,
    CancelToken? cancelToken,
    required HttpRequestCallBack onStart,
    required HttpCallBack<G> onSuccess,
    required HttpCallBack<List<String>>? onError,
  }) async {
    return Stream.fromFuture(request<T, G>(
      url,
      MethodType.GET,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    )).asBroadcastStream();
  }

  Future<Stream> post<T, G>(
    String url, {
    dynamic queryParameters,
    dynamic data,
    CancelToken? cancelToken,
    required HttpRequestCallBack onStart,
    required HttpCallBack<G> onSuccess,
    required HttpCallBack<List<String>>? onError,
  }) async {
    return Stream.fromFuture(request<T, G>(url, MethodType.POST,
            data: data,
            cancelToken: cancelToken,
            queryParameters: queryParameters,
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError))
        .asBroadcastStream();
  }

  Future<Stream> uploadFire<T, G>(String url,
      {dynamic data,
      dynamic queryParameters,
      CancelToken? cancelToken,
      required String filePath,
      required HttpRequestCallBack onStart,
      required HttpCallBack<G> onSuccess,
      required HttpCallBack<List<String>>? onError}) async {
    return Stream.fromFuture(request<T, G>(url, MethodType.POST,
            data: data,
            isUpload: true,
            queryParameters: queryParameters,
            cancelToken: cancelToken,
            filePath: filePath,
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError))
        .asBroadcastStream();
  }

  Future<Stream> put<T, G>(
    String url, {
    dynamic queryParameters,
    dynamic data,
    CancelToken? cancelToken,
    required HttpRequestCallBack onStart,
    required HttpCallBack<G> onSuccess,
    required HttpCallBack reLoginCallBack,
    required HttpCallBack<List<String>>? onError,
  }) async {
    return Stream.fromFuture(request<T, G>(url, MethodType.PUT,
            data: data,
            cancelToken: cancelToken,
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError))
        .asBroadcastStream();
  }

  Future<Stream> delete<T, G>(
    String url, {
    dynamic queryParameters,
    dynamic data,
    CancelToken? cancelToken,
    required HttpRequestCallBack onStart,
    required HttpCallBack<G> onSuccess,
    required HttpCallBack reLoginCallBack,
    required HttpCallBack<List<String>>? onError,
  }) async {
    return Stream.fromFuture(request<T, G>(url, MethodType.DELETE,
            data: data,
            cancelToken: cancelToken,
            onStart: onStart,
            onSuccess: onSuccess,
            onError: onError))
        .asBroadcastStream();
  }

  Future request<T, G>(
    String url,
    MethodType method, {
    dynamic queryParameters,
    dynamic data,
    bool isUpload = false,
    String? filePath,
    required HttpRequestCallBack onStart,
    required HttpCallBack<G> onSuccess,
    required HttpCallBack<List<String>>? onError,
    CancelToken? cancelToken,
  }) async {
    onStart();
    try {
      if (NetworkUtils.isNetWorkAvailable() != 0) {
        final refreshAccessToken =
            await refreshAccessTokenIfNeeded(onError: onError);
        if (refreshAccessToken == StateToken.ERROR) {
          return;
        }
        dio.options.headers.addAll(await concatHeaderProxy());
        Response response;
        switch (method) {
          case MethodType.GET:
          response = await dio.get(url,
                queryParameters: queryParameters, cancelToken: cancelToken);
            break;
          case MethodType.POST:
            if (isUpload == true) {
              final fileData = MultipartFile.fromFileSync(filePath!,
                  filename: filePath.split('/').last);
              final formData = FormData.fromMap({
                "file": fileData,
              });
              response = await dio.post(url,
                  data: formData,
                  options: Options(
                    headers: {},
                  ),
                  cancelToken: cancelToken,
                  queryParameters: queryParameters);
            } else {
              response = await dio.post(url,
                  data: data,
                  cancelToken: cancelToken,
                  queryParameters: queryParameters);
            }
            break;
          case MethodType.PUT:
            response = await dio.put(url, data: data, cancelToken: cancelToken);
            break;
          case MethodType.DELETE:
            response =
                await dio.delete(url, data: data, cancelToken: cancelToken);
            break;
          case MethodType.PATCH:
            response =
                await dio.patch(url, data: data, cancelToken: cancelToken);
            break;
        }

        if (response.statusCode == HttpStatus.ok ||
            response.statusCode == HttpStatus.created) {
          final status = response.data["status"] as bool;
          if (status == true) {
            handleSuccess<T, G>(response.data, onSuccess);
          } else {
            final resultError = BaseResponseEntity.fromJson(response.data);
            handleErrorCallback(resultError.messages, onError);
          }
        } else {
          await handleErrorCommon(response: response, onError: onError);
        }
      } else {
        handleErrorCallback(
            [ExceptionHandle.handleException(HttpException).msg], onError);
      }
    } on Exception catch (error) {
      final DioError dioError = error as dynamic;

      await handleErrorCommon(
          response: dioError.response, error: error, onError: onError);
    }
  }

  Future<void> handleErrorCommon(
      {Response? response,
      dynamic error,
      HttpCallBack<List<String>>? onError}) async {
    if (response != null) {
      final List<String> messages = response.data['messages']?.cast<String>();
      if (response.statusCode == HttpStatus.unauthorized ||
          response.statusCode == 440) {
        await LocalStorageKeys.clearAll();
        await dismissLoading();
        await goToAndRemoveAll(screen: ROUTER_LOGIN);
        //await goTo(screen: ROUTER_OTP_CONFIRM);
        return;
      }

      if (messages.isNotEmpty) {
        handleErrorCallback(messages, onError);
      } else {
        handleErrorCallback(
            [ExceptionHandle.handleException(error).msg], onError);
      }
    } else {
      handleErrorCallback(
          [ExceptionHandle.handleException(error).msg], onError);
    }
    return;
  }

  void handleSuccess<T, G>(
      Map<String, dynamic> response, HttpCallBack<G>? onSuccess) {
    if (onSuccess != null) {
      if (T.toString() == "BaseResponseEntity<dynamic>") {
        final result = BaseResponseEntity<G>.fromJson(response).data as G;
        onSuccess(result);
      } else if (T.toString() == "BaseResponseEntity<String>") {
        final result = BaseResponseEntity<G>.fromJson(response).messages as G;
        onSuccess(result);
      } else {
        onSuccess(response['data']);
      }
    }
    return;
  }

  void handleErrorCallback(
      List<String>? errorMsg, HttpCallBack<List<String>>? onError,
      {int? statusCode}) {
    if (onError != null && errorMsg!.isNotEmpty) {
      onError(BaseErrorResponse(errorMsg).message);
    }
  }

  Future<Map<String, String>> concatHeaderProxy(
      {Map<String, String>? headers}) async {
    headers ??= {};

    final token = await TokenLocalStorage.getToken();
    if (ValidateUtils.isEmpty(token)) {
      return headers;
    }

    headers.addAll(<String, String>{
      '${NetworkConfig.authorization}': '${NetworkConfig.bearer} ${token}',
    });

    return headers;
  }

  Future<StateToken> refreshAccessTokenIfNeeded(
      {required HttpCallBack<List<String>>? onError}) async {
    final token = await TokenLocalStorage.getToken();
    final refreshToken = await TokenLocalStorage.getRefreshTokenKey();
    if (token != null && refreshToken != null) {
      final timestamp = await TokenLocalStorage.getTimestamp();
      final now = DateTime.now().millisecondsSinceEpoch;
      if (now - timestamp >= NetworkConfig.sessionTokenTimeout) {
        final result = await requestRefreshToken(
            token: token, onError: onError, refreshToken: refreshToken);
        if (result != null) {
          final newToken = result.accessToken;
          final newRefreshToken = result.refreshToken;
          if (newToken != null && newRefreshToken != null) {
            await TokenLocalStorage.saveToken(
                token: newToken,
                time: DateTime.now().millisecondsSinceEpoch,
                refreshToken: newRefreshToken);
            return StateToken.OKE;
          } else {
            return StateToken.ERROR;
          }
        } else {
          return StateToken.ERROR;
        }
      } else {
        return StateToken.TOKEN_HAS_NOT_EXPIRED;
      }
    } else {
      return StateToken.NO_TOKEN_YET;
    }
  }

  Future<TokenEntity?> requestRefreshToken<T>(
      {required String token,
      required String refreshToken,
      required HttpCallBack<List<String>>? onError}) async {
    try {
      final headers = {
        '${NetworkConfig.authorization}': '${NetworkConfig.bearer} ${token}',
      };
      dio.options.headers.addAll(headers);
      final response = await dio.post(HttpApi.refreshToken,
          data:
              BaseRequestEntity(data: {"refreshToken": refreshToken}).encode());
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        if (response.data["status"] == true) {
          return TokenEntity.fromJson(response.data["data"]["response"]);
        } else {
          final resultError = BaseResponseEntity.fromJson(response.data);
          handleErrorCallback(resultError.messages, onError);
        }
      } else {
        await handleErrorCommon(response: response, onError: onError);
      }
    } on DioError catch (error) {
      final DioError dioError = error as dynamic;
      if (dioError.message.contains("Connection failed")) {
        await goTo(screen: ROUTER_LOST_NETWORK);
      }
      await handleErrorCommon(
          response: dioError.response, error: error, onError: onError);
    }
  }
}
