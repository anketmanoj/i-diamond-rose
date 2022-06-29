// Package imports:
// Project imports:
import 'package:diamon_rose_app/presentation/screen/login/login_view_model.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginPresenter());
  }
}
