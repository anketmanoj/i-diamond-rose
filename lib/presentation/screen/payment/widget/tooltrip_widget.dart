import 'package:diamon_rose_app/presentation/screen/payment/payment_presenter.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

Widget customToolTrip(BuildContext context, PaymentPresenter controller) {
  return SimpleTooltip(
      show: controller.isShowToolTrip.value,
      animationDuration: Duration(microseconds: 50),
      tooltipDirection: TooltipDirection.up,
      tooltipTap: controller.showTooltrip.call,
      content: Text(
        Localy.of(context)!.cCVToolTripContent,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          decoration: TextDecoration.none,
        ),
      ),
      backgroundColor: AppColors.grey,
      borderColor: AppColors.grey,
      child: IconButton(
        onPressed: controller.showTooltrip.call,
        icon: Icon(
          Icons.info,
          color: AppColors.greyDarkLittle,
        ),
      ));
}
