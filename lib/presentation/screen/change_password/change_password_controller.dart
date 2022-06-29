import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_change_password_model.dart';
import 'package:diamon_rose_app/presentation/screen/change_password/change_password_validation.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController
    with WidgetsBindingObserver {
  RxBool isHideNewPassword = true.obs;
  RxBool isHideConfirmPassword = true.obs;
  RxBool isHideCurrentPassword = true.obs;
  RxString currentPassError = "".obs;
  RxString newPassError = "".obs;
  RxString confirmPassError = "".obs;
  final FocusNode currentPassFocus = FocusNode();
  final FocusNode newPassFocus = FocusNode();
  final FocusNode confirmPassFocus = FocusNode();
  final currentPassController = TextEditingController();
  final newPassController = TextEditingController();
  final confirmPassController = TextEditingController();
  BuildContext? context = Get.context;
  Rx<LoadingState> loading = Rx<LoadingState>(LoadingState.none);

  bool get isLoadingInit => loading.value == LoadingState.loading;

  @override
  void onInit() {
    validateCurrentPass();
    validatePass();
    validateConfirmPass();
    super.onInit();
  }

  void changeStateNewPasswords() {
    isHideNewPassword.value = !isHideNewPassword.value;
    update();
  }

  void changeStateConfirmPasswords() {
    isHideConfirmPassword.value = !isHideConfirmPassword.value;
    update();
  }

  void changeStateCurrentPasswords() {
    isHideCurrentPassword.value = !isHideCurrentPassword.value;
    update();
  }

  void toBack() => Get.back();

  void validateCurrentPass() {
    final validationResults = ChangePasswordValidationResults(context!);
    currentPassFocus.addListener(() {
      if (!currentPassFocus.hasFocus) {
        if (!validationResults
            .validationCurrentPass(currentPassController.text.trim())
            .isValid) {
          currentPassError.value = validationResults
                  .validationCurrentPass(currentPassController.text.trim())
                  .errorMessage ??
              "";
          update();
          return;
        }
        currentPassError.value = "";
        update();
        currentPassFocus.unfocus();
      }
    });
  }

  void validatePass() {
    final validationResults = ChangePasswordValidationResults(context!);
    newPassFocus.addListener(() {
      if (!newPassFocus.hasFocus) {
        if (!validationResults
            .validatePassword(newPassController.text.trim())
            .isValid) {
          newPassError.value = validationResults
                  .validatePassword(newPassController.text.trim())
                  .errorMessage ??
              "";
          update();
          return;
        }
        newPassError.value = "";
        update();
        confirmPassFocus.requestFocus();
        newPassFocus.unfocus();
      }
    });
  }

  void validateConfirmPass() {
    final validationResults = ChangePasswordValidationResults(context!);
    confirmPassFocus.addListener(() {
      if (!confirmPassFocus.hasFocus) {
        if (!validationResults
            .validateConfirmPassword(newPassController.text.trim(),
                confirmPassController.text.trim())
            .isValid) {
          confirmPassError.value = validationResults
                  .validateConfirmPassword(newPassController.text.trim(),
                      confirmPassController.text.trim())
                  .errorMessage ??
              "";
          update();
          return;
        }
        confirmPassError.value = "";
        update();
        confirmPassFocus.unfocus();
      }
    });
  }

  void submitChangePassword() {
    final validationResults = ChangePasswordValidationResults(context!);
    final currentPass = currentPassController.text.trim();
    final newPass = newPassController.text.trim();
    final confirmPass = confirmPassController.text.trim();
    if (!validationResults
        .validationCurrentPass(currentPassController.text.trim())
        .isValid) {
      currentPassError.value = validationResults
              .validationCurrentPass(currentPassController.text.trim())
              .errorMessage ??
          "";
      update();
      return;
    }
    if (!validationResults
        .validatePassword(newPassController.text.trim())
        .isValid) {
      newPassError.value = validationResults
              .validatePassword(newPassController.text.trim())
              .errorMessage ??
          "";
      update();
      return;
    }
    if (!validationResults
        .validateConfirmPassword(
            newPassController.text.trim(), confirmPassController.text.trim())
        .isValid) {
      confirmPassError.value = validationResults
              .validateConfirmPassword(newPassController.text.trim(),
                  confirmPassController.text.trim())
              .errorMessage ??
          "";
      update();
      return;
    }
    UserRepository.instance.requestChangePassword(
      requestChangePasswordModel: RequestChangePasswordModel(
          password: currentPass,
          passwordNew: newPass,
          passwordConfirm: confirmPass),
      onStart: () {
        showLoading();
      },
      onSuccess: (response) async {
        await dismissLoading();
        await showSnackBar(
            message: response[0].toString(),
            snackBarType: SnackBarType.success);
        await Future.delayed(const Duration(milliseconds: 2000), goBack);
      },
      onError: (error) async {
        await dismissLoading();
        await showSnackBar(
            message: error[0].toString(), snackBarType: SnackBarType.warning);
      },
      reLoginCallBack: (response) {
        dismissLoading();
      },
    );
    update();
  }

  void handelErrorForm() {
    newPassError.value = "";
    confirmPassError.value = "";
    update();
  }

  bool isActive() {
    final validationResults = ChangePasswordValidationResults(context!);
    final currentPass = currentPassController.text.trim();
    final newPass = newPassController.text.trim();
    final confirmPass = confirmPassController.text.trim();

    return validationResults.validateForm(
        confirmPassword: confirmPass,
        newPassword: newPass,
        currentPassword: currentPass);
  }
}
