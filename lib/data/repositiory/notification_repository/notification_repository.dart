import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/noti_request/noti_item_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_config.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';

class NotificationRepository {
  NotificationRepository._();

  static final NotificationRepository _instance = NotificationRepository._();

  static NotificationRepository get instance => _instance;

  void requestNotification(
      {required int page,
      required int size,
      required String url,
      required String sort,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<NotificationItemModel>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {

    HttpRequest.getInstance()?.get<BaseResponseEntity,
        BaseListResponseEntity<NotificationItemModel>>(
      url,
      queryParameters: {
        "page": page,
        "size": size,
        "sort": "$sort,DESC",
      },
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  void deleteNotificationId(
      {required int id,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.notification}?id=$id";

    HttpRequest.getInstance()?.delete<BaseResponseEntity<String>, dynamic>(url,
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
        reLoginCallBack: (response) {});
  }
}
