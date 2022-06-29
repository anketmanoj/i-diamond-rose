import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/tab_view/tab_view_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseNavigator extends GetxController
    with WidgetsBindingObserver, StateMixin {
  TabViewModel _tabViewModel = Get.put(TabViewModel());

  Future<void> goToProfile() async {
    final uid = _tabViewModel.videoEntity!.uid;
    final userId = _tabViewModel.videoEntity!.userId;
    Get.lazyReplace(() => ProfileViewModel());
    await goTo(
      screen: ROUTER_PROFILE,
      preventDuplicates: false,
      argument: ["${uid}", "${userId}", "${userId}"],
    );
  }

  void goToOtherContent() {
    goTo(screen: ROUTER_OTHER_CONTENT);
  }
}
