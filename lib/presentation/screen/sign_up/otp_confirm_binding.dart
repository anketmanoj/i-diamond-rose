import 'package:diamon_rose_app/presentation/screen/sign_up/otp_confirm_viewmodel.dart';
import 'package:get/get.dart';

class OtpConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpConfirmViewModel());
  }
}
