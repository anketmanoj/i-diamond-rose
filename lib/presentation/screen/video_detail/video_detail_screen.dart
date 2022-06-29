import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/shimmer/home_shimmer_list.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/video_detail/video_detail_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoDetailScteen extends GetView<VideoDetailViewModel> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.find<VideoCardViewModel>().isFullScreen = false.obs;
          Get.find<VideoCardViewModel>().update();
          return false;
        },
        child: controller.obx(
            (state) => Stack(
                  children: [
                    VideoCard(
                      homeViewModel: Get.find<HomeViewModel>(),
                      videoEntity: controller.videoEntity,
                    ),
                    Obx(() => Get.find<VideoCardViewModel>().isFullScreen.value
                        ? Container()
                        : Padding(
                            padding: EdgeInsets.only(top: 30, left: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: controller.goBackProfile,
                                    icon: Icon(
                                      Icons.arrow_back_ios_new,
                                      size: 25,
                                      color: AppColors.grey,
                                    ))
                              ],
                            ),
                          ))
                  ],
                ),
            onLoading: HomeShimmerList()));
  }
}
