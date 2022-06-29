import 'dart:io';

import 'package:diamon_rose_app/data/repositiory/my_collection_repository/my_collection_repository.dart';
import 'package:diamon_rose_app/domain/entities/enum/video_source.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ReplayVideoViewModel extends GetxController
    with WidgetsBindingObserver, SingleGetTickerProviderMixin, StateMixin {
  Rx<VideoPlayerController>? controller;
  BuildContext? context = Get.context;
  RxBool isVideoCompleted = false.obs;
  Map<String, dynamic> _parameters = Get.parameters;
  RxBool _isInit = true.obs;
  int? _id;

  bool get isSubmittable =>
      _parameters['source'] == VideoSource.local.asString()!;

  bool get isInit => _isInit.value;

  bool get isVisibleDelete => _id != null;

  @override
  void onInit() {
    initVideo();
    change(initVideo, status: RxStatus.success());
    update();
    super.onInit();
  }

  Future<void> initVideo() async {
    final url = _parameters['filePath'];
    final id = _parameters['id'];
    if (id != null) {
      _id = int.parse(id);
    }
    if (_parameters['source'] == VideoSource.network.asString()!) {
      controller = Rx(VideoPlayerController.network(url));
    } else {
      controller = Rx(VideoPlayerController.file(File(url)));
    }

    if (controller == null) {
      return;
    }

    final videoController = controller!.value;
    try {
      await videoController.initialize().then((value) => {
            videoController.addListener(() {
              if (!videoController.value.isPlaying &&
                  videoController.value.isInitialized &&
                  videoController.value.duration ==
                      videoController.value.position) {
                isVideoCompleted.value = true;
                update();
              }
            })
          });
      await controller!.value.play();
      // await controller.value.setLooping(true);
    } on PlatformException catch (e) {
      debugPrint('${e.message}');
      await showErrorConfirmDialog(
          context: Get.context!, errors: [e.message.toString()]);
    } on Exception catch (e) {
      debugPrint('$e');
      await showErrorConfirmDialog(
          context: Get.context!, errors: [e.toString()]);
    }

    _isInit.value = false;
    update();
  }

  void submit() {
    showConfirmDialog(
        context: context!,
        action: () =>
            goTo(screen: ROUTER_AR_PROGRESSING, parameter: _parameters),
        message: Localy.of(context!)!.confirmSeparateBackgroundText);
  }

  void handleVideo() {
    if (controller!.value.value.isPlaying) {
      controller!.value.pause();
    } else {
      isVideoCompleted.value = false;
      controller!.value.play();
    }
    update();
  }

  void onDeleteAr() {
    MyCollectionRepository.instance.deleteAr(
        id: _id!,
        onStart: () {
          showLoading();
        },
        onSuccess: (response) async {
          await dismissLoading();
          goBack(argument: response[0].toString());
        },
        onError: (onError) async {
          await showErrorConfirmDialog(context: context!, errors: onError);
          await dismissLoading();
        });
  }

  @override
  void onClose() {
    super.dispose();
    controller?.value
        .dispose()
        .catchError((e) => debugPrint("${e.toString()}"));
  }
}
