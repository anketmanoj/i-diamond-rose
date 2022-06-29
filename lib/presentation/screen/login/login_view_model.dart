import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/account_repository/account_repository.dart';
import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_sign_in_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/fcm/firebase_cloud_messaging_handler.dart';
import 'package:diamon_rose_app/domain/local_storage/first_launch_local_storage/first_launch_local_storage.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/login/login.validate.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPresenter extends GetxController with WidgetsBindingObserver {
  RxBool obscureText = true.obs;

  RxString username = "".obs;

  Rx<String?> usernameError = Rx<String?>(null);

  RxString password = "".obs;

  Rx<String?> passwordError = Rx<String?>(null);

  Rx<LoadingState> _loading = Rx<LoadingState>(LoadingState.none);

  bool get isLoading => _loading.value == LoadingState.loading;
  Rx<UserContentModel?> userContentModel = Rx(UserContentModel());
  VideoCache cacheManager = VideoCache();

  void changeStatePasswords() {
    obscureText.value = !obscureText.value;
    update();
  }

  void onUserNameChange(String value) {
    username.value = value;
    update();
  }

  void onPasswordChange(String value) {
    password.value = value;
    update();
  }

  void onNativigateForgotPassword() {
    goTo(screen: ROUTER_FORGOT_PASSWORD);
  }

  void onNavigateToPassword() {
    goTo(screen: ROUTER_LOGIN_CHOICE);
  }

  void loginAR(BuildContext context) {
    _loading.value = LoadingState.loading;
    handleClearErrorForm();
    final validationResults = LoginValidationResults(context);

    final usernameInput = username.value;
    final passwordInput = password.value;

    if (!validationResults.validateForm(
        username: usernameInput, password: passwordInput)) {
      usernameError.value =
          validationResults.validateUserName(usernameInput).errorMessage;
      passwordError.value =
          validationResults.validatePassword(passwordInput).errorMessage;
      _loading.value = LoadingState.none;
      update();
      return;
    }
    AuthRepository.instance.requestSignIn(
      signInModel: RequestSignInModel(
          userNameOrEmail: usernameInput, password: passwordInput),
      onStart: () {
        showLoading();
      },
      onSuccess: (userContent) async {
        userContentModel.value = userContent;
        handleAllForm();
        final bool isFirst = await FirstLaunchLocalStorage.get();

        await FirebaseCloudMessagingHandler.updateDeviceToken();
        await AccountRepository.instance.saveAccountInfo(userContent);
        await dismissLoading();
        if (isFirst == true) {
          await FirstLaunchLocalStorage.launched();
          await goToAndRemoveAll(screen: ROUTER_FIRST_LOAD);
        } else {
          await goToAndRemoveAll(screen: ROUTER_MAIN);
        }
      },
      onError: (error) {
        if (error.first.contains("Bad credentials")) {
          showErrorConfirmDialog(
              textAlign: TextAlign.center,
              context: context,
              errors: [Localy.of(context)!.authenticationErrorText]);
        }
        _loading.value = LoadingState.none;
        dismissLoading();
      },
    );
    update();
  }

  void handleAllForm() {
    username.value = "";
    password.value = "";
    handleClearErrorForm();
  }

  void handleClearErrorForm() {
    usernameError.value = null;
    passwordError.value = null;
  }
}
