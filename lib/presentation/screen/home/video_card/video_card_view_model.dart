import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/enum/video_type.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/action_toolbar/actions_toolbar_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoCardViewModel extends GetxController with StateMixin {
  VideoCardViewModel({required this.videoEntity, this.controller});

  Rx<VideoPlayerController>? controller;
  late VideoEntity videoEntity;

  bool get isLocalUser => localUserId == videoEntity.userId;
  late int localUserId;
  RxInt typeVideo = 0.obs;
  RxBool isFullScreen = false.obs;

  RxBool get isVideoPaid => (typeVideo == VideoType.paid.index).obs;
  RxBool isClicked = false.obs;
  VideoCache _videoCache = VideoCache();

  RxBool get isbuffering => controller!.value.value.isBuffering.obs;

  RxBool get endTimeDemo {
    if (isVideoPaid.value &&
        (controller!.value.value.position.inSeconds == 5 ||
            (controller!.value.value.duration.inSeconds < 5 &&
                controller!.value.value.position.inSeconds == 3))) {
      checkPlay();
      return true.obs;
    }
    return false.obs;
  }

  RxBool isLockVideo = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    Get.find<HomeViewModel>().isRegisterVideo = true.obs;
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _listener;
      endTimeDemo.value;
      update();
    });

    localUserId = Get.put(HomeViewModel()).localUserId.value;
  }

  void cleanVideoController() {
    controller!.value.dispose();
    controller = null;
    update;
  }

  void checkStatusScreen() {
    if (isFullScreen.value) {
      isFullScreen.toggle();
      update();
    }
  }

  void initVideo(
      {Rx<VideoPlayerController>? videoPlayerController, VideoEntity? item}) {
    checkStatusScreen();
    if (item != null) {
      videoEntity = item;
    }
    controller = videoPlayerController;
    checkVideoType();
    playVideo();
    Get.put(HomeViewModel()).changeState();
  }

  void changeStatusScreen() {
    isFullScreen.toggle();
    update();
  }

  Future<void> intController({int? index, VideoEntity? item}) async {
    if (item != null) {
      videoEntity = item;
    }

    if (controller != null) {
      controller!.value.removeListener(_listener);
      await controller!.value.dispose();
      controller = null;
      change(controller, status: RxStatus.loading());
    }
    final FileResponse fileResponse = await _videoCache.initVideoToCache(
        url: videoEntity.videoDTO!.videoUrl,
        key: videoEntity.videoDTO!.id.toString());
    final FileInfo fileInfo = fileResponse as FileInfo;
    controller = VideoPlayerController.file(fileInfo.file).obs;
    await controller!.value.initialize();
    await controller!.value.setLooping(true);
    //initVideo(videoPlayerController: controller);
    Get
      ..put(ActionsToolbarViewModel(videoEntity: videoEntity))
          .initForVideo(item: videoEntity);
    await Get.put(VideoDescriptionViewModel(videoEntity: videoEntity))
        .getInformation(item: videoEntity);
    initVideo(videoPlayerController: controller);
    update();
  }

  void playVideo() {
    controller!.value
      ..seekTo(Duration(milliseconds: 0))
      ..play();
    change(controller, status: RxStatus.success());
    update();
  }

  double getScale() {
    final double heightVideo = controller!.value.value.size.height;
    final double widthVideo = controller!.value.value.size.width;
    if (heightVideo > 1070) {
      return 1.045;
    } else {
      return widthVideo / heightVideo;
    }
  }

  Future<void> checkVideoType({int index = 0, bool isRestore = false}) async {
    typeVideo.value = videoEntity.videoSettingDTO!.videoType! - 1;
    controller!.value.addListener(_listener);
    playVideo();
    update();
  }

  Future<void> disponse() async {
    controller!.value.removeListener(_listener);
  }

  void SetLockVideo() {
    if (isVideoPaid.value && endTimeDemo.value && !isLocalUser) {
      isLockVideo.value = true;
      update();
    } else {
      isLockVideo.value = false;
      update();
    }
  }

  void changeStatusVideo() {
    if (controller!.value.value.isPlaying) {
      controller!.value.pause();
    } else {
      controller!.value.play();
    }
    isClicked.toggle();
    update();
  }

  void _listener() {
    if (controller!.value.value.isPlaying && isClicked.isTrue) {
      isClicked = false.obs;
    }
    SetLockVideo();
    update();
  }

  void checkPlay() {
    if (controller!.value.value.isPlaying) {
      controller!.value.pause();
    }
    update();
  }

  void checkBuffering() {
    if (isbuffering != controller!.value.value.isBuffering) {
      isbuffering.value = controller!.value.value.isBuffering;
      update();
    }
  }
}
