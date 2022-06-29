import 'dart:io';

import 'package:diamon_rose_app/domain/http/exception/network_error.dart';
import 'package:dio/dio.dart';

class ExceptionHandle {
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int internalServerError = 500;
  static const int serviceUnavailable = 503;
  static const int networkError = 1000;
  static const int parseError = 1001;
  static const int socketError = 1002;
  static const int httpError = 1003;
  static const int connectTimeoutError = 1004;
  static const int sendTimeoutError = 1005;
  static const int receiveTimeoutError = 1006;
  static const int cancelError = 1007;
  static const int defaultError = 9998;
  static const int unknownError = 9999;

  static final Map<int, NetworkError> _errorMap = <int, NetworkError>{
    badRequest: NetworkError(badRequest, 'Bad request!'),
    unauthorized: NetworkError(unauthorized, 'Access Denied!'),
    forbidden: NetworkError(forbidden, 'Forbidden Errors!'),
    notFound: NetworkError(notFound, 'Not found!'),
    internalServerError:
        NetworkError(internalServerError, 'Internal server error!'),
    networkError: NetworkError(
        networkError, 'The network is abnormal, please check your network!'),
    parseError: NetworkError(parseError, 'Data parsing error!'),
    socketError: NetworkError(
        socketError, 'The socket is abnormal, please check your network!'),
    httpError: NetworkError(
        httpError, 'The http is abnormal, please try again later!'),
    connectTimeoutError: NetworkError(
        connectTimeoutError, 'Connection timeout with API server!'),
    sendTimeoutError: NetworkError(
        sendTimeoutError, 'Send timeout in connection with API server!'),
    receiveTimeoutError: NetworkError(
        receiveTimeoutError, 'Receive timeout in connection with API server!'),
    cancelError:
        NetworkError(cancelError, 'Request to API server was cancelled!'),
    serviceUnavailable: NetworkError(cancelError, 'Connection failed'),
    unknownError: NetworkError(unknownError,
        'An error occurred. We will record and fix this issue soon.!'),
  };

  static NetworkError handleException(dynamic error, {int? statusCode}) {
    return _handleException(error, statusCode: statusCode);
  }

  static int _handleError(DioError error, {int? statusCode}) {
    int errorCode = unknownError;

    if (statusCode != null) {
      switch (statusCode) {
        case badRequest:
          errorCode = badRequest;
          break;
        case unauthorized:
          errorCode = unauthorized;
          break;
        case forbidden:
          errorCode = forbidden;
          break;
        case notFound:
          errorCode = notFound;
          break;
        case internalServerError:
          errorCode = internalServerError;
          break;
        default:
          errorCode = unknownError;
          break;
      }
    } else {
      switch (error.error.message) {
        case "Connection failed":
          errorCode = serviceUnavailable;
          break;
        default:
          return errorCode;
      }
    }
    return errorCode;
  }

  static NetworkError _handleException(dynamic error, {int? statusCode}) {
    int errorCode = unknownError;

    if (statusCode != null) {
      errorCode = _handleError(error, statusCode: statusCode);
    } else {
      errorCode = _handleError(error, statusCode: statusCode);
      if (error is DioError) {
        if (error is SocketException) {
          errorCode = socketError;
        }
        if (error is HttpException) {
          errorCode = httpError;
        }
        if (error is FormatException) {
          errorCode = parseError;
        }
        final DioError dioError = error;
        switch (dioError.type) {
          case DioErrorType.connectTimeout:
            errorCode = connectTimeoutError;
            break;
          case DioErrorType.sendTimeout:
            errorCode = sendTimeoutError;
            break;
          case DioErrorType.receiveTimeout:
            errorCode = receiveTimeoutError;
            break;
          case DioErrorType.response:
            errorCode =
                _handleError(error, statusCode: dioError.response!.statusCode);
            break;
          case DioErrorType.cancel:
            errorCode = defaultError;
            break;
          case DioErrorType.other:
            if (errorCode != serviceUnavailable) {
              errorCode = unknownError;
            }
            break;
        }
      } else {
        errorCode = unknownError;
      }
    }

    return _errorMap[errorCode]!;
  }
}

extension DioErrorTypeExtension on DioErrorType {
  int get errorCode => [
        ExceptionHandle.badRequest,
        ExceptionHandle.unauthorized,
        ExceptionHandle.forbidden,
        ExceptionHandle.notFound,
        ExceptionHandle.internalServerError,
        ExceptionHandle.networkError,
        ExceptionHandle.parseError,
        ExceptionHandle.socketError,
        ExceptionHandle.httpError,
        ExceptionHandle.connectTimeoutError,
        ExceptionHandle.sendTimeoutError,
        ExceptionHandle.receiveTimeoutError,
        ExceptionHandle.cancelError,
        ExceptionHandle.defaultError,
        ExceptionHandle.unknownError,
      ][index];
}
