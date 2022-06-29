import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_video_detail_model.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VideoDetailViewModel extends GetxController with StateMixin {
  RequestVideoDetailModel _requestVideoDetailModel = Get.arguments;
  BuildContext? context = Get.context;
  VideoEntity? videoEntity;
  VideoCache videoCache = new VideoCache();

  @override
  Future<void> onInit() async {
    getVideoById();
    super.onInit();
  }

  void getVideoById() {
    VideoRepository.instance.requestVideoInfoDetail(
        requestVideoDetailModel: _requestVideoDetailModel,
        onStart: () {
          change(_requestVideoDetailModel, status: RxStatus.loading());
        },
        onSuccess: (response) {
          videoEntity = response.item;

          Get.find<VideoCardViewModel>().intController(item: videoEntity);
          change(videoEntity, status: RxStatus.success());
          update();
        },
        onError: (error) {
          showErrorConfirmDialog(context: context!, errors: error);
        });
  }

  Future<void> goBackProfile() async {
   
    Get.back(closeOverlays: true);
    update();
  }

  Future<void> getInfoVideo() async {}
}
