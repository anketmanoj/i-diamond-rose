import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class LoggingInterceptor extends Interceptor {
  LoggingInterceptor({
    this.request = true,
    this.requestHeader = true,
    this.requestBody = false,
    this.responseHeader = true,
    this.responseBody = false,
    this.error = true,
    this.logPrint = print,
  });

  bool request;
  bool requestHeader;
  bool requestBody;
  bool responseBody;
  bool responseHeader;
  bool error;

  void Function(Object object) logPrint;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    printInfo('Request:');
    _printLog('uri', options.uri);

    if (request) {
      _printLog('method', options.method);
      _printLog('responseType', options.responseType.toString());
      _printLog('followRedirects', options.followRedirects);
      _printLog('connectTimeout', options.connectTimeout);
      _printLog('sendTimeout', options.sendTimeout);
      _printLog('receiveTimeout', options.receiveTimeout);
      _printLog(
          'receiveDataWhenStatusError', options.receiveDataWhenStatusError);
      _printLog('queryParameters', options.queryParameters);
      _printLog('extra', options.extra);
    }

    if (requestHeader) {
      _printSubjectLog('✽✽✽ headers ✽✽✽');
      options.headers.forEach((key, v) => _printLog(' $key', v));
    }

    if (requestBody) {
      _printSubjectLog('✽✽✽ request data ✽✽✽');
      _printAll(options.data);
    }

    logPrint('');

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    printInfo('Response:');
    _printResponse(response);
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (error) {
      printInfo('Dio - error:');
      _printErrorLog('uri: ${err.requestOptions.uri}');
      _printErrorLog('$err');
      if (err.response != null) {
        _printErrorResponse(err.response!);
      }
      logPrint('');
    }

    handler.next(err);
  }

  void _printResponse(Response response) {
    _printLog('uri', response.requestOptions.uri);
    if (responseHeader) {
      _printLog('statusCode', response.statusCode);
      if (response.isRedirect == true) {
        _printLog('redirect', response.realUri);
      }

      _printSubjectLog('✽✽✽ headers ✽✽✽');
      response.headers
          .forEach((key, v) => _printLog(' $key', v.join('\r\n\t')));
    }
    if (responseBody) {
      printInfo('[JSON DATA]:');
      final Object data = response;
      _printAll(data);
    }
    logPrint('');
  }

  void _printErrorResponse(Response response) {
    _printErrorLog('uri', v: response.requestOptions.uri);
    if (responseHeader) {
      _printErrorLog('statusCode', v: response.statusCode);
      if (response.isRedirect == true) {
        _printErrorLog('redirect', v: response.realUri);
      }

      _printSubjectLog('headers:');
      response.headers
          .forEach((key, v) => _printErrorLog(' $key', v: v.join('\r\n\t')));
    }
    if (responseBody) {
      _printSubjectLog('Response Text:');
      _printAllError(response.toString());
    }
    logPrint('');
  }

  void _printAllError(msg) {
    if (msg != null) {
      final Object object = const JsonDecoder().convert(msg.toString());
      const JsonEncoder json = JsonEncoder.withIndent('  ');
      final _value = '║  ${json.convert(object).replaceAll('\n', '\n ║  ')}';
      _printErrorLog(_value);
    }
  }

  void _printAll(msg) {
    if (msg != null) {
      final Object object = const JsonDecoder().convert(msg.toString());
      const JsonEncoder json = JsonEncoder.withIndent('  ');
      final _value = '║  ${json.convert(object).replaceAll('\n', '\n ║  ')}';

      _printJsonResponse(_value);
    }
  }

  void printInfo(String text) {
    debugPrint('\x1B[32m ✅✅✅ $text ✅✅✅\x1B[0m', wrapWidth: 1024);
  }

  void _printLog(String text, Object? v) {
    final obj = v ?? "";
    debugPrint('\x1B[33m 📗 === $text: $obj \x1B[0m', wrapWidth: 1024);
  }

  void _printJsonResponse(String text) {
    debugPrint('\x1B[32m$text\x1B[0m', wrapWidth: 1024);
  }

  void _printErrorLog(String text, {Object? v}) {
    final obj = v != null ? ":${v}" : "";
    debugPrint('\x1B[31m ❌❌❌ $text$obj \x1B[0m', wrapWidth: 1024);
  }

  void _printSubjectLog(String text) {
    debugPrint('\x1B[34m $text\x1B[0m', wrapWidth: 1024);
  }
}
