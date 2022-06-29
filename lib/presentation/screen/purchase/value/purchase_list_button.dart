import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/purchase_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseListButton extends StatelessWidget {
  const PurchaseListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PurchaseViewModel purchaseViewModel = Get.put(PurchaseViewModel());
    return Column(
      children: [
        _buildButton(
          action: purchaseViewModel.addToCartEvent.call,
          content: Localy.of(context)!.labelAddToCart,
        ),
        _buildButton(
          action: () {
            purchaseViewModel.buyNow();
          },
          content: Localy.of(context)!.labelBuyNow,
        ),
        _buildButton(
            action: () =>
                purchaseViewModel.privateRouter != ROUTER_MY_COLLECTION
                    ? Get.until((route) => Get.currentRoute == ROUTER_MAIN)
                    : Get.back(),
            content: Localy.of(context)!.labelBackToOrigin,
            color: AppColors.white,
            textColor: AppColors.black),
      ],
    );
  }

  Widget _buildButton(
      {required String content,
      required Function() action,
      Color? color,
      HexColor? textColor}) {
    return ButtonAction(
      content: content,
      action: action,
      color: color ?? AppColors.blue,
      textStyle: AppStyles.typeWeight500(
          size: 14, color: textColor ?? AppColors.white),
      radius: 5,
      verticalPadding: heightScreen(percent: 2.58),
      horizontalPadding: 0,
    );
  }
}

SizedBox sizedBoxCustom() {
  return SizedBox(
    height: heightScreen(percent: 1),
  );
}
