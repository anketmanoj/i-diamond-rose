import 'package:diamon_rose_app/presentation/screen/edit_video/edit_video_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/edit_video/views/position_view.dart';
import 'package:diamon_rose_app/presentation/screen/edit_video/views/preview_view.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditVideoScreen extends GetView<EditVideoViewModel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.black,
          body: GetX<EditVideoViewModel>(
              builder: (_) => _bodyBody(context))),
    );
  }

  Widget _bodyBody(BuildContext context) {
    if (controller.isInit) {
      return SizedBox.shrink();
    }
    return WillPopScope(
      onWillPop: () async {
        if (controller.panelController.isPanelOpen) {
          await controller.panelController.close();
          return false;
        }
        controller.isGoBack = true;
        return true;
      },
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PageView(
            allowImplicitScrolling: true,
            onPageChanged: controller.onPageChange,
            controller: controller.pageController,
            physics: controller.enablePageViewScroll
                ? AlwaysScrollableScrollPhysics()
                : NeverScrollableScrollPhysics(),
            children: [
              PreviewView(controller: controller),
              PositionView(controller: controller)
            ],
          )),
    );
  }
}
