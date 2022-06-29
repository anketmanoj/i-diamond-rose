import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_renew_password_model.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/forgot_password_otp/forgot_otp_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RenewPasswordViewModel extends GetxController
    with WidgetsBindingObserver {
  final passController = new TextEditingController();
  final passConfirmController = new TextEditingController();
  final FocusNode passFocus = FocusNode();
  final FocusNode passConfirmFocus = FocusNode();
  RxBool _passShow = false.obs;
  RxBool _passConfirmShow = false.obs;
  RxString passwordError = "".obs;
  RxString confirmPasswordError = "".obs;
  ForgotOTPModel forgotOTPModel = Get.put(ForgotOTPModel());
  BuildContext? context = Get.context;

  @override
  void onInit() {
    onSubmitPass();
    onSubmitPassConfirm();
    super.onInit();
  }

  bool get isPassShow => _passShow.value;

  bool get isPassConfirmShow => _passConfirmShow.value;

  void onShowPassChange() {
    _passShow.value = !_passShow.value;
    update();
  }

  void submitPassword() {
    final validationResults = ValidateUtils(context!);
    if (!validationResults.validatePassword(passController.text).isValid) {
      passwordError.value = validationResults
              .validatePassword(passController.text)
              .errorMessage ??
          "";
      update();
      FocusScope.of(context!).requestFocus(passFocus);
      return;
    }
    final _password = passController.text.trim();
    final _confirmPassword = passConfirmController.text.trim();
    if (!validationResults
        .validateConfirmPassword(_password, _confirmPassword)
        .isValid) {
      confirmPasswordError.value = validationResults
              .validateConfirmPassword(_password, _confirmPassword)
              .errorMessage ??
          "";
      FocusScope.of(context!).requestFocus(passConfirmFocus);
      update();
      return;
    }
    AuthRepository.instance.requestChangePassword(
        renewPasswordModel: RequestRenewPasswordModel(
            password: passController.text, email: forgotOTPModel.email.value),
        onStart: () {
          showLoading();
        },
        onSuccess: (response) async {
          await dismissLoading();
          await showConfirmDialog(
              onlyActionRight: true,
              title: Localy.of(context!)!.successTitle,
              action: () {
                goToAndRemoveAll(screen: ROUTER_LOGIN);
              },
              context: context!,
              message: response[0].toString());
        },
        onError: (error) {
          dismissLoading();
          showErrorConfirmDialog(context: context!, errors: error);
        });
    update();
  }

  void clearError() {
    passwordError.value = "";
    confirmPasswordError.value = "";
    update();
  }

  void onShowPassConfirmChange() {
    _passConfirmShow.value = !_passConfirmShow.value;
    update();
  }

  void onSubmitPass() {
    passFocus.addListener(() {
      if (!passFocus.hasFocus) {
        final validationResults = ValidateUtils(context!);
        if (!validationResults.validatePassword(passController.text).isValid) {
          passwordError.value = validationResults
                  .validatePassword(passController.text)
                  .errorMessage ??
              "";
          update();
          return;
        }
        passwordError.value = "";
        FocusScope.of(context!).requestFocus(passConfirmFocus);
        update();
      }
    });
  }

  void onSubmitPassConfirm() {
    passConfirmFocus.addListener(() {
      if (!passConfirmFocus.hasFocus) {
        final validationResults = ValidateUtils(context!);
        final _password = passController.text.trim();
        final _confirmPassword = passConfirmController.text.trim();
        if (!validationResults
            .validateConfirmPassword(_password, _confirmPassword)
            .isValid) {
          confirmPasswordError.value = validationResults
                  .validateConfirmPassword(_password, _confirmPassword)
                  .errorMessage ??
              "";
          update();
          return;
        }
        confirmPasswordError.value = "";
        update();
      }
    });
  }

  bool isActive() {
    final validationResults = ValidateUtils(context!);
    if (!validationResults.validateForm(
            confirmPassword: passConfirmController.text,
            password: passController.text) ||
        passController.text != passConfirmController.text) {
      return false;
    }
    return true;
  }
}
