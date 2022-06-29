import 'dart:async';

import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/action_toolbar/actions_toolbar_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class TabViewModel extends GetxController {
  TabViewModel({this.videoEntity});

  Rx<VideoPlayerController>? controller;
  VideoEntity? videoEntity;
  VideoCache _videoCache = VideoCache();
  TabController? tabController;
  RxInt indexVideo = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await intVideo();
  }

  void cleanVideoController() {
    if (controller != null) {
      controller!.value.removeListener(_listener);
      controller!.value.dispose();
      controller = null;
    }
    update();
  }

  Future<void> intVideo({int? index, VideoEntity? item}) async {
    indexVideo.value = index ?? 0;
    if (item != null) {
      videoEntity = item;
    }
    cleanVideoController();
    final FileResponse fileResponse = await _videoCache.initVideoToCache(
        url: videoEntity!.videoDTO!.videoUrl,
        key: videoEntity!.videoDTO!.id.toString());
    final FileInfo fileInfo = fileResponse as FileInfo;
    controller = VideoPlayerController.file(fileInfo.file).obs;
    await controller!.value.initialize();
    await controller!.value.setLooping(true);
    Get
      ..put(VideoCardViewModel(
              videoEntity: videoEntity!, controller: controller))
          .initVideo(item: videoEntity, videoPlayerController: controller)
      ..put(ActionsToolbarViewModel(videoEntity: videoEntity))
          .initForVideo(item: videoEntity);
    await Get.put(VideoDescriptionViewModel(videoEntity: videoEntity!))
        .getInformation(item: videoEntity);

    update();
  }

  void playVideo() {
    controller!.value
      ..seekTo(Duration(milliseconds: 0))
      ..play();
  }

  void _listener() {
    update();
  }
}
