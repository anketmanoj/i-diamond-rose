import 'package:diamon_rose_app/presentation/screen/replay_video/replay_video_view_model.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/wait_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ReplayVideoScreen extends GetView<ReplayVideoViewModel> {
  @override
  Widget build(BuildContext context) {
    final VideoPlayerController videoPlayerController =
        controller.controller!.value;
    return controller.obx((state) {
      return Obx(
        () => Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Center(
                  child: controller.isInit
                      ? WaitLoadingWidget()
                      : videoPlayerController.value.isInitialized
                          ? FittedBox(
                              fit: BoxFit.cover,
                              child: SizedBox(
                                width: videoPlayerController.value.size.width,
                                height: videoPlayerController.value.size.height,
                                child: VideoPlayer(videoPlayerController),
                              ))
                          : VideoPlayer(videoPlayerController),
                ),
                if (controller.isVisibleDelete) _buildDeleteIcon(context)
              ],
            )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              height: 87,
              width: MediaQuery.of(context).size.width,
              color: AppColors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: _backButton(context),
                  ),
                  Expanded(
                    child: _playButton(controller),
                  ),
                  Expanded(
                    child: Visibility(
                        visible: controller.isSubmittable,
                        child: _submitButton()),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }

  Widget expanded(Widget content) {
    return Expanded(
      child: content,
    );
  }

  Widget _backButton(BuildContext context) {
    return GestureDetector(
        onTap: Get.back,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(
            Icons.arrow_back_ios,
            size: 28,
            color: AppColors.white,
          ),
          Text(Localy.of(context)!.back,
              style: AppStyles.typeWeight400(color: AppColors.white))
        ]));
  }

  Widget _playButton(ReplayVideoViewModel controller) {
    return GestureDetector(
        onTap: controller.handleVideo,
        child: Icon(
          (_shouldShowPlayIcon(controller))
              ? Icons.play_circle_outline
              : Icons.pause_circle_outline,
          size: 56,
          color: AppColors.white,
        ));
  }

  bool _shouldShowPlayIcon(ReplayVideoViewModel controller) {
    final VideoPlayerController videoPlayerController =
        controller.controller!.value;
    final isNotPlaying = !videoPlayerController.value.isPlaying;

    final isCompleted = controller.isVideoCompleted.value;

    return isNotPlaying || isCompleted;
  }

  Widget _submitButton() {
    return Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
            onTap: controller.submit,
            child: Icon(
              Icons.check_circle,
              color: AppColors.white,
              size: 28,
            )));
  }

  Widget _buildDeleteIcon(BuildContext context) => Align(
        alignment: Alignment.bottomRight,
        child: IconButton(
            padding: EdgeInsets.zero,
            icon: SvgPicture.asset(AppImages.ic_delete_svg),
            onPressed: () => showConfirmDialog(
                context: context,
                message: Localy.of(context)!.labelMaterialDelete,
                negativeLabel: Localy.of(context)!.labelCancelDelete,
                positiveLabel: Localy.of(context)!.labelConfirmDelete,
                action: controller.onDeleteAr)),
      );
}
