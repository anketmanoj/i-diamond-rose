import 'package:diamon_rose_app/presentation/screen/purchase_policy/purchase_policy_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class PurchasePolicyScreen extends GetView<PurchasePolicyViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar(context),
      body: Stack(
        children: [
          _bodyBody(context),
          // _initView(),
        ],
      ),
    );
  }

  Container _bodyBody(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 120),
                child: Center(
                  child: textCustom(
                      content: Localy.of(context)!.contentPurchasePolicy,
                      style: AppStyles.typeText18(color: AppColors.white),
                      align: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      );

  Positioned _buildSubmitButton(BuildContext context) => Positioned(
        bottom: 0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          child: ButtonAction(
              content: Localy.of(context)!.labelAgreeButton,
              action: controller.navigate,
              textStyle: AppStyles.typeTextNormal(color: AppColors.white),
              color: AppColors.black),
        ),
      );

  PreferredSize _buildAppBar(BuildContext context) {
    return appBarApp(
      title: Localy.of(context)!.titlePurchasePolicy,
      isGradientBackground: false,
      iconLeft: Icon(
        Icons.arrow_back_ios,
        color: AppColors.white,
      ),
      actIconLeft: goBack,
      titleColor: AppColors.white,
    );
  }
}
