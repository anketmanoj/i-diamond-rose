import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/add_email/add_email_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/text_field_default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class AddEmailScreen extends GetView<AddEmailViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _bodyBody(context, controller),
    );
  }

  Widget _bodyBody(BuildContext context, AddEmailViewModel controller) =>
      SingleChildScrollView(
          child: GetBuilder(builder: (AddEmailViewModel builder) {
        return Container(
          margin: EdgeInsets.only(left: 17, right: 17, top: 30),
          child: Column(
            children: [
              _buildTitle(context),
              TextFieldDefault(
                onChanged: (string) => controller.checkIsActive.call(),
                errorCode: controller.emailError.value ?? "",
                textController: controller.emailController,
                focusNode: controller.emailFocus,
                textInputType: TextInputType.emailAddress,
                hint: Localy.of(context)!.hintEnterEmail,
                textInputAction: TextInputAction.done,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () => goToAndRemoveAll(screen: ROUTER_LOGIN),
                      child: Text(Localy.of(context)!.textCancelSignUpEmail,
                          style:
                              AppStyles.typeTextNormal(color: AppColors.white),
                          textAlign: TextAlign.end),
                    ),
                  ),
                ],
              ),
              _buildSubmitButton(context, builder)
            ],
          ),
        );
      }));

  Widget _buildTitle(
    BuildContext context,
  ) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
            child: Text(Localy.of(context)!.titleAddEmail,
                style: AppStyles.typeTextNormal(
                    size: 28, color: AppColors.white))),
      );

  Widget _buildSubmitButton(BuildContext context, AddEmailViewModel builder) =>
      Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: ButtonAction(
              active: builder.emailController.value.text.isNotEmpty &&
                      builder.isActive.value ||
                  false,
              content: Localy.of(context)!.labelNext,
              action: controller.submitEmail,
              textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
              color: builder.emailController.value.text.isNotEmpty &&
                      builder.isActive == true.obs
                  ? AppColors.white
                  : AppColors.greyDarkLittle));
}
