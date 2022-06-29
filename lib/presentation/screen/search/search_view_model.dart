import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchViewModel extends GetxController
    with WidgetsBindingObserver, SingleGetTickerProviderMixin {
  final List<Widget> myTabs = <Widget>[
    Tab(text: 'TOP'),
    Tab(text: 'USER'),
    Tab(text: 'VIDEO'),
    Tab(text: 'HASHTAG'),
  ];

  late TabController tabController;

  @override
  void onInit() {
    _initController();
    super.onInit();
  }

  void navigateToTab(int index) {
    tabController.animateTo(index);
  }

  void _initController() {
    tabController =
        TabController(length: myTabs.length, vsync: this, initialIndex: 0);
    update();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void onNavigateToProfile() {
    goTo(screen: ROUTER_PROFILE);
  }
}
