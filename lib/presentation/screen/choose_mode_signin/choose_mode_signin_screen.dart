import 'package:diamon_rose_app/presentation/screen/choose_mode_signin/choose_mode_signin_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseModeSignInScreen extends GetView<ChooseModeSignInScreenViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
            height: heightScreen(percent: 30),
            child: Image.asset(
              '${PNG_URL}GDlogo.png',
              fit: BoxFit.fitWidth,
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                height: 70,
                width: widthScreen() / 1.2,
                child: ButtonAction(
                  action: () => controller.actRegister.call(),
                  content: Localy.of(context)!.register,
                  color: AppColors.black,
                  textStyle: TextStyle(fontSize: 16, color: AppColors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                height: 70,
                width: widthScreen() / 1.2,
                child: ButtonAction(
                  action: () => controller.actLogin.call(),
                  content: Localy.of(context)!.loginButtonText,
                  color: AppColors.greyDarkLittle,
                  textStyle: TextStyle(fontSize: 16, color: AppColors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
