import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/font_entity/font_entity.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class TemplateRepository {
  TemplateRepository._();

  static final TemplateRepository _instance = TemplateRepository._();

  static TemplateRepository get instance => _instance;

  void requestFontList(
      {required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<FontEntity>> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.fonts;
    HttpRequest.getInstance()
        ?.get<BaseResponseEntity, BaseListResponseEntity<FontEntity>>(url,
            onStart: onStart, onSuccess: onSuccess, onError: onError);
  }
}
