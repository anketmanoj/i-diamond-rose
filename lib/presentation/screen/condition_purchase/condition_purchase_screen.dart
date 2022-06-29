import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/condition_purchase/condition_purchase_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConditionPurchaseScreen extends GetView<ConditionPurchaseViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context, controller),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar(
      BuildContext context, ConditionPurchaseViewModel controller) {
    return AppBar(
      elevation: 0,
      title: Text(
        Localy.of(context)!.labelTitleConditionPurchase,
        style: AppStyles.typeText18(),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.greyDark,
        ),
        onPressed: () {
          controller.backPressAction();
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          await controller.backPressAction();
          return true;
        },
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: AppColors.purple02,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: Localy.of(context)!.labelConfirmPurchase1),
                    TextSpan(
                        text: Localy.of(context)!.labelConfirmPurchase2,
                        style: TextStyle(color: AppColors.green)),
                    TextSpan(text: Localy.of(context)!.labelConfirmPurchase3),
                    TextSpan(
                        text: Localy.of(context)!.labelConfirmPurchase4,
                        style: TextStyle(color: AppColors.green)),
                    TextSpan(text: Localy.of(context)!.labelConfirmPurchase5),
                    TextSpan(
                        text: Localy.of(context)!.labelConfirmPurchase6,
                        style: TextStyle(color: Colors.red),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            goTo(screen: ROUTER_PURCHASE_POLICY);
                          }),
                    TextSpan(text: Localy.of(context)!.labelConfirmPurchase7)
                  ])),
                ),
                heightSpace(30),
                Container(
                  width: widthScreen(percent: 100),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                    color: AppColors.purple02,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(children: [
                        TextSpan(
                            text:
                                """${Localy.of(context)!.labelPurchaseContent}\n"""),
                        TextSpan(
                            text:
                                """${Localy.of(context)!.labelPurchaseMyCollection}\n"""),
                        TextSpan(
                            text:
                                """${Localy.of(context)!.labelPurchaseMyAR}\n"""),
                        TextSpan(
                            text:
                                """${Localy.of(context)!.labelPurchaseMyBackground}\n"""),
                        TextSpan(
                            text:
                                """${Localy.of(context)!.labelPurchaseMyEffect}\n"""),
                      ])),
                ),
                Spacer(),
                ButtonAction(
                  textStyle: TextStyle(color: AppColors.white),
                  color: AppColors.black,
                  action: () => controller.showPayment(context),
                  content: Localy.of(context)!.labelConfirm,
                )
              ],
            ),
          ),
        ));
  }
}
