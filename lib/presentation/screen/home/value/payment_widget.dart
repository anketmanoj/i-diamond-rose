import 'dart:async';

import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/payment/payment_presenter.dart';
import 'package:diamon_rose_app/presentation/screen/payment/payment_screen.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';

Future<void> showPayment(BuildContext context,
    {bool isChooseMethodPayment = false}) {
  Get.put(PaymentPresenter());
  return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return GetBuilder<PaymentPresenter>(
            builder: (controller) =>
                isChooseMethodPayment ? PaymentMethodView() : PaymentView());
      });
}

Future<void> showPayment2(BuildContext context, List<int> itemIds,
    {bool isChooseMethodPayment = false}) {
  final PaymentPresenter paymentPresenter = Get.put(PaymentPresenter())
    ..itemIds = itemIds;

  return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return GetBuilder<PaymentPresenter>(
            builder: (controller) => PaymentMethodView2());
      });
}

Future<void> presentPaymentSheet(BuildContext context, String apiKey,
    String paymentIntentClientSecret) async {
  bool isSucceed = true;

  Stripe.publishableKey = apiKey;

  try {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Main params
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Flutter Stripe Store Demo',
        // Extra params
        applePay: true,
        googlePay: true,
        style: ThemeMode.dark,
        testEnv: true,
        merchantCountryCode: 'DE',
      ),
    );
  } on Exception catch (e) {
    isSucceed = false;

    if (e is StripeException) {
      unawaited(showSnackBar(
          message: Localy.of(context)!.paymentFailed,
          snackBarType: SnackBarType.danger));
    } else {
      // Show other message?
      unawaited(showSnackBar(
          message: Localy.of(context)!.paymentFailed,
          snackBarType: SnackBarType.danger));
    }
  }

  if (!isSucceed) {
    return;
  }

  try {
    await Stripe.instance.presentPaymentSheet();
  } on Exception catch (_) {
    isSucceed = false;
  }

  if (!isSucceed) {
    return;
  }

  unawaited(goTo(screen: ROUTER_MY_COLLECTION));
}
