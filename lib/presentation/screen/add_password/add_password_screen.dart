import 'package:diamon_rose_app/presentation/screen/add_password/add_password_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/text_field_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class AddPasswordScreen extends GetView<AddPasswordViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Obx(() => _bodyBody(context, controller)),
    );
  }

  Widget _bodyBody(
          BuildContext context, AddPasswordViewModel addPasswordViewModel) =>
      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 17, right: 17, top: 30),
          child: Column(
            children: [
              _buildTitle(context),
              heightSpace(30),
              ..._buildPassInputText(context),
              _buildSubmitButton(
                  context, addPasswordViewModel, controller.isActive()),
            ],
          ),
        ),
      );

  Widget _buildTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
            child: Text(
          Localy.of(context)!.titleAddPassword,
          style: AppStyles.typeTextNormal(size: 28, color: AppColors.white),
        )),
      );

  List<Widget> _buildPassInputText(BuildContext context) => [
        heightSpace(10),
        TextFieldDefault(
          textController: controller.passController,
          borderColor: controller.passwordError.value != ""
              ? AppColors.red
              : AppColors.white,
          focusNode: controller.passFocus,
          errorCode: controller.passwordError.value,
          textInputType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          hint: Localy.of(context)!.hintEnterPass,
          obscureText: !controller.isShowPass,
          suffixIcon:
              controller.isShowPass ? Icons.visibility : Icons.visibility_off,
          suffixIconOnTap: () => controller.onShowPassChange(),
          onSubmitted: (value) => controller.onSubmitPass(),
          maxLength: 16,
          counterText: "",
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              Localy.of(context)!.passwordRules,
              style: AppStyles.typeTextNormal(color: AppColors.white),
            )),
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
          obscureText: !controller.isShowPassConfirm,
          suffixIcon: controller.isShowPassConfirm
              ? Icons.visibility
              : Icons.visibility_off,
          suffixIconOnTap: () => controller.onShowPassConfirmChange(),
          onSubmitted: (value) => controller.onSubmitPassConfirm(),
          maxLength: 16,
          counterText: "",
        ),
      ];

  Widget _buildSubmitButton(BuildContext context,
          AddPasswordViewModel addPasswordViewModel, bool isActive) =>
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 17),
        child: ButtonAction(
            active: isActive,
            content: Localy.of(context)!.labelNext,
            action: addPasswordViewModel.submitPassword,
            textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
            color: isActive ? AppColors.white : AppColors.greyDarkLittle),
      );
}
