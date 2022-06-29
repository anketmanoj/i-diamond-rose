import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/forgot_password/forgot_password_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotOTPModel extends GetxController {
  String otpValue = '';

  RxString email = "".obs;

  ForgotPasswordViewModel forgotPasswordViewModel = Get.find();

  BuildContext? context = Get.context;

  RxInt counter = 120.obs;

  RxString tmpUserId = "0".obs;

  late TextEditingController otpController = TextEditingController();

  Future<void> startingCounter() async {
    for (var i = counter.value; i > 0; i--) {
      //Loop 100 times
      await Future.delayed(const Duration(milliseconds: 1000), () {
        counter.value--;
      });
    }
  }

  @override
  void onInit() {
    super.onInit();
    startingCounter();
    initEmail();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void initEmail() {
    email.value = forgotPasswordViewModel.emailController.value.text;
    print(email.value);
    update();
  }

  void resendCode(BuildContext context) {
    AuthRepository.instance.requestForgotPassword(
      email: forgotPasswordViewModel.emailController.text,
      onStart: () {
        showLoading();
      },
      onSuccess: (userContent) {
        dismissLoading();
        counter.value = 120;
        startingCounter();
      },
      onError: (error) {
        dismissLoading();
        showErrorConfirmDialog(context: context, errors: error);
        update();
      },
    );
    update();
    return;
  }

  void submitOTP(String otp) {
    AuthRepository.instance.requestCheckOTP(
        email: email.value,
        otp: otp,
        onStart: () {
          showLoading();
        },
        onSuccess: (response) async {
          tmpUserId.value = response.tmpUserId.toString();
          print(tmpUserId);

          await dismissLoading();
          await goTo(screen: ROUTER_RENEW_PASSWORD);
          update();
        },
        onError: (error) {
          dismissLoading();
          showErrorConfirmDialog(context: context!, errors: error);
        });
  }
}
