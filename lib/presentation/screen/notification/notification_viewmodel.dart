import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/model/enum/notification_type.dart';
import 'package:diamon_rose_app/data/repositiory/notification_repository/notification_repository.dart';
import 'package:diamon_rose_app/domain/entities/enum/video_source.dart';
import 'package:diamon_rose_app/domain/entities/request/noti_request/noti_item_model.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UseNotificationViewModel extends GetxController with StateMixin {
  RxList<NotificationItemModel?> _notificationList =
      RxList<NotificationItemModel>([]);

  List<NotificationItemModel?> get notificationList => _notificationList;

  Rx<LoadingState> _loading = Rx<LoadingState>(LoadingState.none);

  bool get isLoadingInit => _loading.value == LoadingState.loading;

  ScrollController listViewController = new ScrollController();

  RxInt page = 0.obs;

  RxInt _totalPage = 0.obs;

  RxInt _totalElements = 0.obs;

  RxInt get totalElement => _totalElements;

  RxString _notificationValue = "抜き出".obs;

  List<String> _notificationTypes = ['抜き出', '動画マージ', 'コメント', 'フォロワー'];

  Rx<NotificationType> type = NotificationType.videoMatting.obs;

  String get notificationValue => _notificationValue.value;

  List<String> get listNotificationTypes => _notificationTypes;

  String param = "1";

  @override
  void onInit() {
    initViewModel();
    super.onInit();
  }

  Future<void> initViewModel() async {
    if (!LocalStorageKeys.isTapFCM) {
      await fetchItems();
    }

    listViewController.addListener(() {
      if (listViewController.position.pixels ==
          listViewController.position.maxScrollExtent) {
        fetchItems(isRefresh: false);
      }
    });
    update();
  }

  Future<void> fetchItems({bool isRefresh = true}) async {
    if (isRefresh) {
      page.value = 0;
      _notificationList = RxList<NotificationItemModel>([]);
    }
    if (_totalPage.value != 0) {
      if (page.value >= _totalPage.value) {
        return;
      }
    }
    String _url = "";
    if (type.value == NotificationType.typeComment ||
        type.value == NotificationType.likedVideo) {
      _url =
          "${HttpApi.getListNotifications}?notificationType=${type.value.asString()}&notificationType=${NotificationType.likedVideo.asString()}";
    } else {
      _url =
          "${HttpApi.getListNotifications}?notificationType=${type.value.asString()}";
    }

    NotificationRepository.instance.requestNotification(
        page: page.value,
        size: 11,
        url: _url,
        sort: "createdAt",
        onStart: () {
          if (page.value == 0) {
            _loading.value = LoadingState.loading;
          }
        },
        onSuccess: (response) {
          for (int i = 0; i < response.numberOfElements; i++) {
            _notificationList.add(response.items[i]);
          }
          page.value++;
          _totalPage.value = response.totalPage;
          _totalElements.value = response.totalElements;

          if (page.value == 1) {
            _loading.value = LoadingState.none;
          }
          change(_loading, status: RxStatus.success());
          update();
        },
        onError: (error) async {
          _loading.value = LoadingState.none;
        });
    update();
  }

  Future<void> removeItemId(int id, Function(String successMessage) onSuccess,
      Function(String errorMessage) onError) async {
    NotificationRepository.instance.deleteNotificationId(
        id: id,
        onStart: () {
          _loading.value = LoadingState.loading;
          update();
        },
        onSuccess: (response) async {
          _loading.value = LoadingState.none;
          _notificationList.removeWhere((item) => item!.id == id);
          await _totalElements--;

          onSuccess(response[0]);
        },
        onError: (error) async {
          _loading.value = LoadingState.none;

          onError(error.first.toString());
        });

    update();
  }

  void onChangeType(String value) {
    type.value = convertNotificationDisplayToEnum(value);
    _notificationValue.value = value;
    fetchItems(isRefresh: true);
    update();
  }

  void navigateToReplayVideo(NotificationItemModel item) {
    final parameter = <String, String>{
      'source': VideoSource.network.asString()!,
      'filePath': item.itemUrl,
    };
    goTo(screen: ROUTER_REPLAY_VIDEO, parameter: parameter);
  }

  void setParam(String value) {
    if (value == NotificationType.likedVideo.asString()) {
      param = NotificationType.typeComment.asString();
    } else {
      param = value;
    }
    update();
    return;
  }

  Future<void> resetParam() async {
    type.value = parseNotificationType(param);
    _notificationValue.value = type.value.asDisplay();

    await fetchItems();
    LocalStorageKeys.isTapFCM = false;
    update();
  }
}
