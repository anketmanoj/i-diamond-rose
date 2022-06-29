import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/shimmer/home_shimmer_list.dart';
import 'package:diamon_rose_app/presentation/screen/home/widget/newfeed_view.dart';
import 'package:diamon_rose_app/presentation/screen/lost_network_screen/lost_network_screen.dart';
import 'package:diamon_rose_app/presentation/screen/notification/notification_screen.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_screen.dart';
import 'package:diamon_rose_app/presentation/screen/select_model/select_model_screen.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/widget/bottom_bar.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomScaffold(
        footer: BottomBar(),
        body: Center(
          child: controller.obx(
              (state) => Obx(
                    () => currentScreen(controller),
                  ),
              onLoading: controller.screenIndex.value != 0
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : NewFeedView(), onError: (string) {
            if (string == CONNECTION_FAILED) {
              return LostNetworkScreen();
            }
            return HomeShimmerList();
          }),
        )));
  }

  Widget currentScreen(HomeViewModel controller) {
    switch (controller.screenIndex.value) {
      case 0:
        return NewFeedView();
      case 1:
        return Container();
      // return SearchView();
      case 2:
        return SelectModelScreen();
      case 3:
        // return Container();
        return NotificationScreen();
      case 4:
        return ProfileScreen();
      default:
        return NewFeedView();
    }
  }
}
