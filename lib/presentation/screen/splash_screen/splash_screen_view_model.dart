import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/domain/fcm/firebase_cloud_messaging_handler.dart';
import 'package:diamon_rose_app/domain/local_storage/first_launch_local_storage/first_launch_local_storage.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:get/get.dart';

class SplashScreenViewModel extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
    await showLoading();

    try {
      final isLoggedIn = await AuthRepository.instance.isInfoLogged();
      if (isLoggedIn) {
        await _handleTokens();
      }
      await handleNavigateToScreen(isLoggedIn: isLoggedIn);
    } on Exception catch (_) {}

    await dismissLoading();
  }

  Future<void> _handleTokens() async {
    FirebaseCloudMessagingHandler.updateDeviceTokenTimer();
  }

  Future<bool> isFirstLaunch() async => FirstLaunchLocalStorage.get();

  Future<void> handleNavigateToScreen({required bool isLoggedIn}) async {
    if (isLoggedIn) {
      await dismissLoading();
      await goToAndRemoveAll(screen: ROUTER_MAIN);
    } else {
      await delay(seconds: 2);
      await dismissLoading();
      await goToAndRemoveAll(screen: ROUTER_CHOOSE_MODE_PAGE);
    }

    return;
  }
}
