import 'package:diamon_rose_app/presentation/screen/forgot_password_otp/forgot_otp_model.dart';
import 'package:get/get.dart';

class ForgotOTPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotOTPModel());
  }
}
