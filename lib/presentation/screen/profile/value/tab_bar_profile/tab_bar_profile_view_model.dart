import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_get_list_video_model.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_profile_entity.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarProfileViewModel extends GetxController
    with WidgetsBindingObserver, SingleGetTickerProviderMixin, StateMixin {
  ProfileViewModel profileViewModel = Get.find<ProfileViewModel>();
  ScrollController scrollController = new ScrollController();
  TabController? tabController;

  Rx<List<VideoProfileEntity?>> listVideo = Rx([]);
  RxInt totalElements = 0.obs;
  int scrollPosition = 0;
  int sizePage = PROFILE_VIDEOS_PAGE_SIZE;
  VideoCache cacheManager = VideoCache();
  RxInt currentIndex = 0.obs;
  RxInt localUserId = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    localUserId = Get.find<ProfileViewModel>().localUserId;
    scrollController.addListener(checkScrollPosition);
    tabController = TabController(length: TOTAL_TAB_PROFILE, vsync: this);
    await initVideo(initRequest(VIDEO_TYPE_FREE));
    update();
  }

  @override
  void onClose() {
    tabController?.dispose();
    super.onClose();
  }

  RequestGetListVideoModel initRequest(int type) {
    return RequestGetListVideoModel(
        type: type,
        userId: localUserId.value,
        page: scrollPosition,
        size: sizePage);
  }

  Future<void> initVideo(
      RequestGetListVideoModel requestGetListVideoModel) async {
    VideoRepository.instance.requestGetListVideo(
        requestGetListVideoModel: requestGetListVideoModel,
        onStart: profileViewModel.stateIsLoading,
        onSuccess: (response) async {
          if (listVideo.value.isNotEmpty) {
            listVideo.value.clear();
            change(listVideo, status: RxStatus.loading());
          }
          totalElements.value = response.totalElements;
          listVideo.value.addAll(response.items);
          print(listVideo.value);

          /// get list video without thumbnailUrl == null
          listVideo.value = listVideo.value
              .where((element) => element!.myVideo.thumbnailUrl != null)
              .toList();
          // TODO(backup): init Video To Cache When go To Profile Screen
          change(listVideo, status: RxStatus.success());
          for (final item in response.items) {
            await cacheManager.initVideoToCache(
                url: item!.myVideo.thumbnailUrl,
                key: "$THUMBNAIL_IMAGE_KEY/${item.myVideo.videoId}");
          }

          if (listVideo.value.isNotEmpty &&
              listVideo.value.first!.myVideo.thumbnailUrl != null) {
            scrollPosition++;
          } else {
            change(totalElements, status: RxStatus.empty());
          }

        },
        onError: (onError) {});
  }

  void changeTabIndex(int indexTab) {
    scrollPosition = 0;
    listVideo.value.clear();
    if (indexTab == 0) {
      initVideo(initRequest(VIDEO_TYPE_FREE));
    } else if (indexTab == 1) {
      initVideo(initRequest(VIDEO_TYPE_PAID));
    } else {
      initVideo(initRequest(VIDEO_TYPE_SETTING));
    }
    currentIndex = indexTab.obs;
    update();
  }

  Future<void> loadMoreVideo() async {
    VideoRepository.instance.requestGetListVideo(
        requestGetListVideoModel: RequestGetListVideoModel(
            type: currentIndex.value + 1,
            userId: localUserId.value,
            page: scrollPosition,
            size: PROFILE_VIDEOS_PAGE_SIZE),
        onStart: () {
          if (scrollPosition > 0) {
            change(scrollPosition, status: RxStatus.loadingMore());
          }
        },
        onSuccess: (response) {
          listVideo.value.addAll(response.items);
          listVideo.refresh();
          update();
          scrollPosition++;
        },
        onError: (onError) {});
  }

  Future<void> checkScrollPosition() async {
    if (scrollController.position.pixels == 0) {
      return;
    }
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      await loadMoreVideo();
      return;
    }
  }
}
