import 'package:diamon_rose_app/presentation/screen/login/login_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/login/value/login_widget_details.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginPresenter> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Obx(() {
        return Stack(
          children: [_bodyLogin(context)],
        );
      }),
    );
  }

  Widget _bodyLogin(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(Localy.of(context)!.loginTitle,
                style: AppStyles.typeText22(color: AppColors.white, size: 26)),
          ),
          heightSpace(90),
          Flexible(
            flex: 3,
            child: LoginDetail().textFormFieldLogin(
                onChanged: controller.onUserNameChange,
                hintText: Localy.of(context)!.textUserName,
                isPassword: false,
                errorText: controller.usernameError.value ?? null),
          ),
          heightSpace(20),
          Flexible(
            flex: 3,
            child: LoginDetail().textFormFieldLogin(
                onChanged: controller.onPasswordChange,
                hintText: Localy.of(context)!.passwordText,
                errorText: controller.passwordError.value ?? null),
          ),
          heightSpace(30),
          ButtonAction(
              textStyle: AppStyles.typeText18(color: AppColors.blue, size: 16),
              color: AppColors.white,
              content: getLocalize(Localy.of(context)!.loginButtonText),
              active: !controller.isLoading,
              delay: 500,
              debounce: true,
              action: () {
                controller.loginAR(context);
              }),
          heightSpace(10),
          LoginDetail().textButtonLoginScreen(
              title: Localy.of(context)!.forgotPassword,
              textColor: AppColors.white,
              isRegister: true,
              onPressed: controller.onNativigateForgotPassword),
          LoginDetail().textButtonLoginScreen(
              title: Localy.of(context)!.noAccountText,
              isRegister: true,
              textColor: AppColors.white,
              onPressed: controller.onNavigateToPassword),
        ],
      ),
    );
  }
}
