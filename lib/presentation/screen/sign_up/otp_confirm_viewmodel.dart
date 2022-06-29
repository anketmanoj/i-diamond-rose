import 'dart:async';

import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/add_email/add_email_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpConfirmViewModel extends GetxController {
  RxString email = "".obs;

  AddEmailViewModel addEmailViewModel = Get.find();

  BuildContext? context = Get.context;

  RxInt counter = 120.obs;

  RxString tmpUserId = "0".obs;

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
    //counter.dis
  }

  void initEmail() {
    email.value = addEmailViewModel.emailController.value.text;
    print(email.value);
    update();
  }

  void resendCode() {
    AuthRepository.instance.requestSignUpWithEmail(
      email: email.value,
      onStart: () {
        showLoading();
      },
      onSuccess: (userContent) async {
        await dismissLoading();
        counter.value = 120;
        await startingCounter();
        update();
      },
      onError: (error) {
        print(error);
        dismissLoading();
        update();
      },
    );
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
          await goTo(screen: ROUTER_ADD_PASSWORD);
          update();
        },
        onError: (error) {
          dismissLoading();
          showErrorConfirmDialog(context: context!, errors: error);
        });
  }
}
