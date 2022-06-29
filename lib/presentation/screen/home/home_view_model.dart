import 'dart:async';
import 'dart:convert';

import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/enum/connect_type.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_get_list_video_model.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/domain/http/connect_status.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/screen/home/tab_view/tab_view_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/video_manager.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/action_toolbar/actions_toolbar_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/notification/notification_viewmodel.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/follow_manager.dart';
import 'package:diamon_rose_app/share/utils/share_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController with StateMixin {
  Rx<int> screenIndex = 0.obs;
  Rx<int> tabIndex = 0.obs;

  RxInt localUserId = 0.obs;
  RxString localUid = "".obs;
  int paidScrollPosition = 0;
  int numLoad = 2;
  bool isFirst = true;
  double offset = 0;
  RxString localAvatar = ''.obs;
  RxString localDisplayName = ''.obs;
  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  final ConnectionStatusSingleton connectionStatus =
      ConnectionStatusSingleton.getInstance();
  BuildContext? context = Get.context;
  PageController? pageController;
  PageController? pageItemController;
  List<VideoEntity?> listVideo = [];

  RxBool _dataAvailable = false.obs;
  RxBool? isEmpty = true.obs;

  RxInt indexVideo = 0.obs;

  VideoManager videoManager = Get.put(VideoManager());
  VideoCache videoCache = new VideoCache();

  RxBool isFollowing = false.obs;

  RxBool isFollowingUser = false.obs;
  RxBool isChangeTab = false.obs;
  RxBool isRegisterVideo = false.obs;

  RxBool get isFullScreen => isRegisterVideo.isTrue &&
          Get.find<VideoCardViewModel>().isFullScreen.isFalse
      ? false.obs
      : true.obs;

  bool get isScrollUp =>
      pageItemController!.position.userScrollDirection ==
      ScrollDirection.reverse;

  bool get dataAvailable => _dataAvailable.value;

  int get typeVideo => isFollowing.isTrue ? 5 : 3;

  @override
  Future<void> onInit() async {
    super.onInit();

    pageController = PageController();
    pageItemController = PageController(
      initialPage: 0,
    );
    await getLocalUser();

    connectionStatus..initialize();
    await connectionStatus.checkConnection();
    if (connectionStatus.hasConnection == false) {
      change(ConectionType.failed, status: RxStatus.error(CONNECTION_FAILED));
      return;
    }
    onInitPage();
    change(loadData(), status: RxStatus.loading());
  }

  Future<void> getLocalUser() async {
    final prefs = await SharedPreferencesUtils.instance;
    final accountInfo = prefs?.getString(LocalStorageKeys.accountInfoKey);
    localAvatar.value = jsonDecode(accountInfo!)["avatar"];
    localUserId.value = jsonDecode(accountInfo)['userId'];
    localDisplayName.value = jsonDecode(accountInfo)['displayName'];
    localUid.value = jsonDecode(accountInfo)['uid'];
    update();
  }

  Future<void> pullRefresh() async {
    restoreValue(isRefresh: true);
    await Future.delayed(Duration(milliseconds: 1000));
    await loadData(isRefresh: true);
  }

  Future<void> loadData({bool isRefresh = false}) async {
    VideoRepository.instance.requestListVideo(
      requestGetListVideoModel: RequestGetListVideoModel(
          type: typeVideo,
          userId: null,
          page: paidScrollPosition,
          size: numLoad),
      onStart: () {},
      onSuccess: (response) async {
        if (isRefresh == false) {
          bool alreadyExist;
          for (final item in response.items) {
            alreadyExist = listVideo
                .any((element) => element!.videoDTO!.id == item!.videoDTO!.id);
            if (!alreadyExist) {
              listVideo.add(item);
            }
          }
        } else {
          listVideo = response.items;
          change(listVideo, status: RxStatus.success());
        }
        if (response.items.isEmpty && listVideo.isEmpty) {
          isEmpty = true.obs;
          isChangeTab.toggle();
          change(isEmpty, status: RxStatus.success());
        } else {
          isEmpty = false.obs;
          _dataAvailable.value = true;

          if (paidScrollPosition == 0) {
            await initVieo(url: listVideo[0]!.videoDTO!.videoUrl);
          } else {
            paidScrollPosition++;
          }
        }
        update();
      },
      onError: (error) {
        print(error.first);
      },
    );
  }

  Future<void> initVieo({String? url}) async {
    getPutViewModel(0);

    if (isFirst == true) {
      paidScrollPosition++;
      await loadData();
      isFirst = false;
    }
  }

  void getPutViewModel(int index) {
    if (isChangeTab.isTrue) {
      Get
        ..put(FollowManager())
        ..put(TabViewModel(videoEntity: listVideo[index]))
            .intVideo(index: index, item: listVideo[index])
        ..put(ActionsToolbarViewModel(videoEntity: listVideo[index]));
      isChangeTab.toggle();
    } else {
      Get
        ..put(FollowManager())
        ..put(TabViewModel(videoEntity: listVideo[index]))
        ..put(ActionsToolbarViewModel(videoEntity: listVideo[index]))
        ..put(VideoDescriptionViewModel(videoEntity: listVideo[index]!));
    }
  }

  void changeState() {
    change(listVideo, status: RxStatus.success());
  }

  void restoreValue({bool isRefresh = false}) {
    isFirst = true;
    numLoad = 2;
    paidScrollPosition = 0;
    listVideo.clear();
    if (isRefresh == false) {
      isEmpty = false.obs;
      _dataAvailable = false.obs;
    }
    update();
  }

  void changeTab({int? page, bool? isTabFollow}) {
    isChangeTab.toggle();

    if (isFollowing.value != isTabFollow) {
      pageController!.animateToPage(page!,
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate);
      isFollowing.value = isTabFollow!;
      restoreValue();
      change(loadData(), status: RxStatus.loading());
    } else {
      pageItemController!.jumpToPage(0);
    }

    update();
  }

  void swapPageListener(int index) {
    offset = pageItemController!.offset;
    if (offset > pageItemController!.position.maxScrollExtent + 100) {
      pageItemController =
          new PageController(initialPage: index, keepPage: true);
    }
    if (offset < pageItemController!.position.minScrollExtent - 100) {
      pageItemController =
          new PageController(initialPage: index, keepPage: true);
    }
    //restoreVideoDispose(index);
  }

  @override
  void dispose() {
    super.dispose();
    pageController!.dispose();
  }

  void changeTabIndex(int index) {
    tabIndex = index.obs;
    update();
  }

  Future<void> setCurrentScreen(int index,
      {bool isGoToProfileDetail = false}) async {
    screenIndex = index.obs;
    connectionStatus..initialize();
    if (connectionStatus.hasConnection) {
      if (index == 0) {
        pageItemController = new PageController(
            initialPage: Get.find<TabViewModel>().indexVideo.value,
            keepPage: true);
        await Get.find<VideoCardViewModel>().intController(
            index: Get.find<TabViewModel>().indexVideo.value,
            item: listVideo[Get.find<TabViewModel>().indexVideo.value]);
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
        if (!isGoToProfileDetail) {
          checkIfRegisterProfileViewmodel();
        }

        if (listVideo.isEmpty || listVideo.isEmpty) {
          change(loadData(), status: RxStatus.loading());
        } else {
          change(screenIndex, status: RxStatus.success());
        }
        update();
      } else if (index == 3) {
        checkIfRegisterVideoCart();
        if (Get.isRegistered<UseNotificationViewModel>() == false) {
          Get.put(UseNotificationViewModel());
        }
        change(screenIndex, status: RxStatus.success());
      } else if (index == 4) {
        checkIfRegisterProfileViewmodel();
        Get.put(ProfileViewModel());
        checkIfRegisterVideoCart();
        change(screenIndex, status: RxStatus.success());
        update();
      } else {
        checkIfRegisterVideoCart();
        change(screenIndex, status: RxStatus.success());
      }
    } else {
      change(ConectionType.failed, status: RxStatus.error(CONNECTION_FAILED));
      update();
    }
  }

  void onInitPage() {
    final index = Get.parameters;
    if (index.isNotEmpty) {
      final String value = index["index"] ?? "0";
      screenIndex.value = int.parse(value);
    }
  }

  void checkIfRegisterVideoCart() {
    if (Get.isRegistered<VideoCardViewModel>() == true) {
      Get.find<VideoCardViewModel>().checkPlay();
    }
  }

  void checkIfRegisterProfileViewmodel() {
    if (Get.isRegistered<ProfileViewModel>()) {
      Get.find<ProfileViewModel>().deleteController();
      Get.delete<ProfileViewModel>();
    }
  }
}
