import 'dart:async';

import 'package:diamon_rose_app/data/model/enum/notification_type.dart';
import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/domain/fcm/firebase_cloud_messaging_handler.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/login/login_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/notification/notification_viewmodel.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class FcmViewModel extends GetxController {
  FcmViewModel({required this.context});

  final BuildContext context;

  static FcmViewModel get to => Get.find();

  @override
  Future<void> onInit() async {
    await _initFCM();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> _initFCM() async {
    await FirebaseCloudMessagingHandler(
      localy: Localy.of(context)!,
      onTapMessage: (message) async {
        try {
          final isLoggedIn = await AuthRepository.instance.isInfoLogged();
          if (isLoggedIn) {
            if (Get.currentRoute != ROUTER_MAIN) {
              Get.until((route) => Get.currentRoute == ROUTER_MAIN);
            }
            LocalStorageKeys.isTapFCM = true;
            await Get.find<HomeViewModel>()
                .setCurrentScreen(int.parse(TAB_NOTIFICATION_INDEX));
            Get.find<UseNotificationViewModel>().setParam(
                message?.notification_type ??
                    NotificationType.videoMatting.asString());
            await Get.find<UseNotificationViewModel>().resetParam();
          } else {
            if (Get.isRegistered<LoginPresenter>()) {
              return;
            }
            await goTo(screen: ROUTER_LOGIN);
          }
        } on Exception catch (_) {}
      },
    ).init();
  }
}
