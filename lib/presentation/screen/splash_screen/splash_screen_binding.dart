import 'package:diamon_rose_app/presentation/screen/splash_screen/splash_screen_view_model.dart';
import 'package:get/get.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenViewModel());
  }
}
