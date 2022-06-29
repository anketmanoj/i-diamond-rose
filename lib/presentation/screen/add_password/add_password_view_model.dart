import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_create_password_model.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/add_password/add_password.validate.dart';
import 'package:diamon_rose_app/presentation/screen/sign_up/otp_confirm_viewmodel.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPasswordViewModel extends GetxController with WidgetsBindingObserver {
  final passController = new TextEditingController();
  final passConfirmController = new TextEditingController();
  final FocusNode passFocus = FocusNode();
  final FocusNode passConfirmFocus = FocusNode();
  RxBool _showPass = false.obs;
  RxBool _showPassConfirm = false.obs;
  RxString passwordError = "".obs;
  RxString confirmPasswordError = "".obs;
  OtpConfirmViewModel otpConfirmViewModel = Get.put(OtpConfirmViewModel());
  BuildContext? context = Get.context;

  @override
  void onInit() {
    onSubmitPass();
    onSubmitPassConfirm();
    super.onInit();
  }

  bool get isShowPass => _showPass.value;

  bool get isShowPassConfirm => _showPassConfirm.value;

  void onShowPassChange() {
    _showPass.value = !_showPass.value;
    update();
  }

  void submitPassword() {
    final validationResults = AddPasswordValidationResults(context!);
    if (!validationResults.validatePassword(passController.text).isValid) {
      passwordError.value = validationResults
              .validatePassword(passController.text)
              .errorMessage ??
          "";
      passFocus.requestFocus();
      update();
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
      passConfirmFocus.requestFocus();
      update();
      return;
    }
    AuthRepository.instance.requestCreatePassword(
      createPasswordModel: RequestCreatePasswordModel(
          password: passController.text,
          tmpUserId: otpConfirmViewModel.tmpUserId.value),
      onStart: () {
        showLoading();
      },
      onSuccess: (userContent) async {
        await dismissLoading();
        await goTo(screen: ROUTER_REGISTER_COMPLETE);
      },
      onError: (error) {
        dismissLoading();
      },
    );
    update();
  }

  void handelErrorForm() {
    passwordError.value = "";
    confirmPasswordError.value = "";
    update();
  }

  void onShowPassConfirmChange() {
    _showPassConfirm.value = !_showPassConfirm.value;
    update();
  }

  void onSubmitPass() {
    passFocus.addListener(() {
      if (!passFocus.hasFocus) {
        final validationResults = AddPasswordValidationResults(context!);
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
        final validationResults = AddPasswordValidationResults(context!);
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
        if (_confirmPassword.isEmpty) {}
        confirmPasswordError.value = "";
        update();
      }
    });
  }

  bool isActive() {
    final validationResults = AddPasswordValidationResults(context!);
    if (!validationResults.validateForm(
            confirmPassword: passConfirmController.text,
            password: passController.text) ||
        passController.text != passConfirmController.text) {
      return false;
    }
    return true;
  }
}
