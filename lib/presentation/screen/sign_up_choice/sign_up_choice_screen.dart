import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/sign_up_choice/sign_up_choice_view_model.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_icon_left.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignUpChoiceScreen extends GetView<SignUpChoicePresenter> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppbar(context),
      body: _buildBody(context),
    );
  }

  PreferredSize _buildAppbar(BuildContext context) => PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 24, color: AppColors.white),
            onPressed: Get.back),
        iconTheme: IconThemeData(color: AppColors.greyDark, size: 40),
      ));

  Widget _buildBody(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildButton(
                    label: Localy.of(context)!.labelAppleSignup,
                    action: () {
                      // TODO(AppleSignup): Implement Apple login.
                    },
                    textStyle: AppStyles.typeTextNormal(),
                    color: AppColors.white,
                    iconAsset: AppImages.ic_logo_apple_svg,
                  ),
                  _buildButton(
                      label: Localy.of(context)!.labelFacebookSignup,
                      action: () {
                        // TODO(FacebookSignup): Implement Facebook login.
                      },
                      color: AppColors.blue,
                      textStyle:
                          AppStyles.typeTextNormal(color: AppColors.white),
                      iconAsset: AppImages.ic_logo_facebook_svg),
                  _buildButton(
                      label: Localy.of(context)!.labelGoogleSignup,
                      action: () {
                        // TODO(GoogleSignup): Implement Google login.
                      },
                      color: AppColors.white,
                      textStyle: AppStyles.typeTextNormal(),
                      iconAsset: AppImages.ic_logo_google_svg),
                  _buildButton(
                      label: Localy.of(context)!.labelEmailSignup,
                      action: () => goTo(screen: ROUTER_ADD_EMAIL),
                      color: AppColors.black,
                      textStyle:
                          AppStyles.typeTextNormal(color: AppColors.white),
                      iconAsset: AppImages.ic_logo_email_svg),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildButton(
          {required String label,
          required Function() action,
          Color? color,
          TextStyle? textStyle,
          required String iconAsset}) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ButtonIconLeft(
          content: label,
          action: action,
          color: color,
          textStyle: textStyle,
          leftIcon: SvgPicture.asset(iconAsset, height: 32, width: 32),
        ),
      );
}
