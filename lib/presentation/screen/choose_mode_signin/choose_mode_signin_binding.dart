import 'package:diamon_rose_app/presentation/screen/choose_mode_signin/choose_mode_signin_view_model.dart';
import 'package:get/get.dart';

class ChooseModeSignInBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseModeSignInScreenViewModel());
  }
}
