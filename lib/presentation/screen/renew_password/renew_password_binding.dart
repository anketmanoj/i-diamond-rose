import 'package:diamon_rose_app/presentation/screen/renew_password/renew_password_view_model.dart';
import 'package:get/get.dart';

class RenewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RenewPasswordViewModel());
  }
}
