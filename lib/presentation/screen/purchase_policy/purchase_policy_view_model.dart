import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchasePolicyViewModel extends GetxController
    with WidgetsBindingObserver {
  void navigate() {
    goTo(screen: ROUTER_CONDITION_PURCHASE);
  }
}
