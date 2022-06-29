import 'package:diamon_rose_app/presentation/screen/change_password/change_password_controller.dart';
import 'package:diamon_rose_app/presentation/screen/change_password/value/change_pass_textfield.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        enableSingleScrollView: true,
        appBar: _buildAppBar(context),
        body: _bodyChangPassword(context));
  }

  final changePasswordController = Get.put(ChangePasswordController());

  Widget _bodyChangPassword(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 100,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              Obx(() => CustomTextField(
                    label: Localy.of(context)!.labelCurrentPassword,
                    controller: changePasswordController.currentPassController,
                    errorText: changePasswordController.currentPassError.value,
                    focusNode: changePasswordController.currentPassFocus,
                    onFieldSubmitted: (value) =>
                        changePasswordController.validateCurrentPass(),
                    obscureText: true,
                    isHiddenPass:
                        changePasswordController.isHideCurrentPassword.value,
                    action: changePasswordController
                        .changeStateCurrentPasswords.call,
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    Localy.of(context)!.passwordRules,
                    style: AppStyles.typeTextNormal(color: AppColors.white),
                  )),
              heightSpace(10),
              Obx(() => CustomTextField(
                    controller: changePasswordController.newPassController,
                    label: Localy.of(context)!.labelNewPassword,
                    errorText: changePasswordController.newPassError.value,
                    obscureText: true,
                    isHiddenPass:
                        changePasswordController.isHideNewPassword.value,
                    action:
                        changePasswordController.changeStateNewPasswords.call,
                    focusNode: changePasswordController.newPassFocus,
                    onFieldSubmitted: (value) =>
                        changePasswordController.validatePass(),
                    maxLength: 16,
                  )),
              heightSpace(20),
              Obx(() => CustomTextField(
                    controller: changePasswordController.confirmPassController,
                    label: Localy.of(context)!.labelConfirmPassword,
                    errorText: changePasswordController.confirmPassError.value,
                    obscureText: true,
                    isHiddenPass:
                        changePasswordController.isHideConfirmPassword.value,
                    focusNode: changePasswordController.confirmPassFocus,
                    action: changePasswordController
                        .changeStateConfirmPasswords.call,
                    onFieldSubmitted: (value) =>
                        changePasswordController.validateConfirmPass(),
                    maxLength: 16,
                  )),
              Spacer(),
              ButtonAction(
                  color: changePasswordController.isActive()
                      ? AppColors.white
                      : AppColors.greyDarkLittle,
                  action: changePasswordController.submitChangePassword,
                  content: Localy.of(context)!.textSubmitButton,
                  textStyle: AppStyles.typeText18(
                    color: AppColors.black,
                  ),
                  active: changePasswordController.isActive())
            ],
          ),
        ));
  }

  PreferredSize _buildAppBar(BuildContext context) => appBarApp(
      titleColor: AppColors.white,
      title: Localy.of(context)!.titleResetPassword,
      isGradientBackground: false,
      iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.white),
      actIconLeft: changePasswordController.toBack);
}
