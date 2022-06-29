import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:get/get.dart';

class ChooseModeSignInScreenViewModel extends GetxController {
  void actLogin() {
    goTo(screen: ROUTER_LOGIN);
    update();
  }

  void actRegister() {
    goTo(screen: ROUTER_LOGIN_CHOICE);
  }
}
