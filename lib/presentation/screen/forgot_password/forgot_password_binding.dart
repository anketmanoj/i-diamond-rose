import 'package:diamon_rose_app/presentation/screen/forgot_password/forgot_password_view_model.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordViewModel());
  }
}
