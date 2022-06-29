import 'dart:async';

import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEmailViewModel extends GetxController {
  final emailController = TextEditingController();
  Rx<String?> emailError = Rx<String?>(null);
  final FocusNode emailFocus = FocusNode();
  BuildContext context = Get.context!;
  RxBool isActive = false.obs;
  Rx<LoadingState> loading = Rx<LoadingState>(LoadingState.none);

  bool get isLoadingInit => loading.value == LoadingState.loading;

  @override
  void onInit() {
    super.onInit();
  }

  void checkIsActive() {
    final emailInput = emailController.text;
    if (ValidateUtils.validateEmail(emailInput) == true) {
      isActive.value = true;
    } else {
      isActive.value = false;
    }
    ;
    update();
  }

  Future<void> submitEmail() async {
    handleClearErrorForm();

    final emailInput = emailController.text;

    AuthRepository.instance.requestSignUpWithEmail(
      email: emailInput,
      onStart: () {
        showLoading();
      },
      onSuccess: (userContent) async {
        await dismissLoading();

        await goTo(screen: ROUTER_OTP_CONFIRM);
      },
      onError: (error) {
        print(error);
        emailError.value = error.first.toString();
        dismissLoading();
        update();
      },
    );
    update();
    return;
  }

  void handleClearErrorForm() {
    emailError.value = null;
  }
}
