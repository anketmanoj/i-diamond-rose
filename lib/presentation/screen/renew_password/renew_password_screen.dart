import 'package:diamon_rose_app/presentation/screen/renew_password/renew_password_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/text_field_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class RenewPasswordScreen extends GetView<RenewPasswordViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Obx(() => _body(context, controller)),
    );
  }

  Widget _body(BuildContext context,
          RenewPasswordViewModel renewPasswordViewModel) =>
      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 17, right: 17, top: 30),
          child: Column(
            children: [
              _buildTitle(context),
              _buildPasswordRules(context),
              heightSpace(10),
              ..._buildPassInputText(context),
              _buildSubmitButton(
                  context, renewPasswordViewModel, controller.isActive()),
            ],
          ),
        ),
      );

  Widget _buildTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
            child: Text(
          Localy.of(context)!.renewPasswordTitle,
          style: AppStyles.typeTextNormal(size: 28, color: AppColors.white),
        )),
      );

  List<Widget> _buildPassInputText(BuildContext context) => [
        TextFieldDefault(
          textController: controller.passController,
          borderColor: controller.passwordError.value != ""
              ? AppColors.red
              : AppColors.white,
          focusNode: controller.passFocus,
          errorCode: controller.passwordError.value,
          textInputType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          hint: Localy.of(context)!.renewPasswordHint,
          obscureText: !controller.isPassShow,
          suffixIcon:
              controller.isPassShow ? Icons.visibility : Icons.visibility_off,
          suffixIconOnTap: () => controller.onShowPassChange(),
          onSubmitted: (value) => controller.onSubmitPass,
          maxLength: 16,
          counterText: "",
        ),
        heightSpace(10),
        TextFieldDefault(
          textController: controller.passConfirmController,
          borderColor: controller.confirmPasswordError.value != ""
              ? AppColors.red
              : AppColors.white,
          focusNode: controller.passConfirmFocus,
          textInputType: TextInputType.visiblePassword,
          errorCode: controller.confirmPasswordError.value,
          textInputAction: TextInputAction.done,
          hint: Localy.of(context)!.hintEnterConfirmPass,
          obscureText: !controller.isPassConfirmShow,
          suffixIcon: controller.isPassConfirmShow
              ? Icons.visibility
              : Icons.visibility_off,
          suffixIconOnTap: () => controller.onShowPassConfirmChange(),
          onSubmitted: (value) => controller.onSubmitPassConfirm,
          maxLength: 16,
          counterText: "",
        ),
      ];

  Widget _buildSubmitButton(BuildContext context,
          RenewPasswordViewModel renewPasswordViewModel, bool isActive) =>
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 17),
        child: ButtonAction(
            active: isActive,
            content: Localy.of(context)!.textSubmitButton,
            action: renewPasswordViewModel.submitPassword,
            textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
            color: isActive ? AppColors.white : AppColors.greyDarkLittle),
      );

  Widget _buildPasswordRules(BuildContext context) => Align(
      alignment: Alignment.topLeft,
      child: Text(
        Localy.of(context)!.passwordRules,
        style: AppStyles.typeTextNormal(color: AppColors.white),
      ));
}
