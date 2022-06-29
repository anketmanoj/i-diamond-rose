import 'package:diamon_rose_app/presentation/screen/forgot_password/forgot_password_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/text_field_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: appBarApp(
          isGradientBackground: false,
          title: Localy.of(context)!.titleForgotPass,
          titleColor: AppColors.white,
          actIconLeft: goBack,
          iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.white),
        ),
        body: Stack(
          children: [
            _bodyBody(context, controller),
          ],
        ));
  }

  Widget _bodyBody(BuildContext context, ForgotPasswordViewModel controller) =>
      SingleChildScrollView(
          child: GetBuilder(builder: (ForgotPasswordViewModel builder) {
        return Container(
          margin: EdgeInsets.only(left: 17, right: 17, top: 30),
          child: Column(
            children: [
              TextFieldDefault(
                onChanged: (string) => controller.checkIsActive.call(),
                errorCode: controller.emailError.value ?? "",
                textController: controller.emailController,
                focusNode: controller.emailFocus,
                textInputType: TextInputType.emailAddress,
                hint: Localy.of(context)!.emailHint,
                textInputAction: TextInputAction.done,
              ),
              _buildSubmitButton(context, builder)
            ],
          ),
        );
      }));

  Widget _buildSubmitButton(
          BuildContext context, ForgotPasswordViewModel builder) =>
      Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: ButtonAction(
              active: builder.emailController.value.text.isNotEmpty &&
                      builder.isActive.value ||
                  false,
              content: Localy.of(context)!.labelSendButton,
              action: controller.submitEmail,
              textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
              color: builder.emailController.value.text.isNotEmpty &&
                      builder.isActive == true.obs
                  ? AppColors.white
                  : AppColors.greyDarkLittle));
}
