import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/card_item_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/shimmer/home_shimmer_list.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/outline_button_home.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/action_toolbar/actions_toolbar.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description.dart';
import 'package:diamon_rose_app/presentation/screen/home/widget/lock_view.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends GetView<VideoCardViewModel> {
  const VideoCard({
    Key? key,
    required this.homeViewModel,
    required this.videoEntity,
  }) : super(key: key);
  final HomeViewModel homeViewModel;
  final VideoEntity? videoEntity;

  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => GetBuilder<VideoCardViewModel>(
            init: Get.find<VideoCardViewModel>(),
            builder: (controller) {
              final VideoPlayerController videoController =
                  controller.controller!.value;
              return Container(
                  height: heightScreen(),
                  width: widthScreen(),
                  color: AppColors.black,
                  child: Stack(
                    children: [
                      Transform.scale(
                        scale: 1,
                        child: Center(
                          child: AspectRatio(
                            aspectRatio: videoController.value.aspectRatio,
                            child: Stack(
                              children: [
                                videoController.value.duration.inSeconds > 0 &&
                                        videoController
                                                .value.position.inSeconds >
                                            0
                                    ? Obx(() => controller.isLockVideo.value
                                        ? ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                Colors.grey.withOpacity(0.7),
                                                BlendMode.srcOver),
                                            child: LockView(
                                              height: videoController
                                                  .value.size.height,
                                              width: videoController
                                                  .value.size.width,
                                              child: Center(
                                                child: AspectRatio(
                                                  aspectRatio: videoController
                                                      .value.aspectRatio,
                                                  child: VideoPlayer(
                                                      videoController),
                                                ),
                                              ),
                                            ),
                                          )
                                        : GestureDetector(
                                            onTap: controller.changeStatusVideo,
                                            child:
                                                VideoPlayer(videoController)))
                                    : VideoPlayer(videoController),
                                controller.isbuffering.isTrue
                                    ? Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : Container(),
                                Center(
                                    child: ButtonTheme(
                                        height: 100,
                                        minWidth: 200,
                                        child: controller.isLockVideo.value
                                            ? OutlineButtonHome(
                                                child: Icon(
                                                  Icons.lock,
                                                  size: 60,
                                                ),
                                                onPressed: () {
                                                  controller.checkPlay();
                                                  goTo(
                                                      screen:
                                                          ROUTER_PURCHASE_SCREEN,
                                                      preventDuplicates: true,
                                                      argument: CardItemEntity(
                                                          videoId: videoEntity!
                                                              .videoDTO!.id,
                                                          totalPrice: videoEntity!
                                                              .videoSettingDTO!
                                                              .price
                                                              .toString()));
                                                })
                                            : AnimatedOpacity(
                                                opacity:
                                                    controller.isClicked.value
                                                        ? 1.0
                                                        : 0.0,
                                                duration:
                                                    Duration(milliseconds: 400),
                                                child: OutlineButtonHome(
                                                    child: Icon(
                                                      videoController
                                                              .value.isPlaying
                                                          ? Icons.pause
                                                          : Icons.play_arrow,
                                                      size: 60,
                                                    ),
                                                    onPressed: controller
                                                        .changeStatusVideo))))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Obx(() => Positioned(
                          top: 30,
                          right: 5,
                          child: IconButton(
                              onPressed: controller.changeStatusScreen,
                              icon: Icon(
                                controller.isFullScreen.isFalse ?  Icons.fullscreen : Icons.fullscreen_exit,
                                size: 30,
                                color: AppColors.grey,
                              )))),
                      controller.isFullScreen.isFalse ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              VideoDescription(
                                videoCardViewModel: controller,
                                videoEntity: this.videoEntity,
                                isLocalUser: controller.isLocalUser,
                              ),
                              ActionsToolbar(
                                videoEntity: videoEntity,
                              ),
                            ],
                          ),
                          SizedBox(height: 20)
                        ],
                      ) : Container(),
                    ],
                  ));
            }),
        onLoading: HomeShimmerList());
  }
}
