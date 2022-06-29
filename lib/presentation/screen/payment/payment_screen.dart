import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/payment_widget.dart';
import 'package:diamon_rose_app/presentation/screen/payment/payment_presenter.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_icon_left.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentView extends GetView<PaymentPresenter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ButtonIconLeft(
              content: "\u0024 10",
              action: () => showPayment(context, isChooseMethodPayment: true)),
          ButtonIconLeft(
              content: "\u0024 20", action: controller.handlePayPress.call),
          ButtonIconLeft(
              content: "\u0024 30", action: controller.handlePayPress.call),
        ],
      ),
    );
  }
}

class PaymentMethodView extends GetView<PaymentPresenter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ButtonIconLeft(
              content: "Credit Card",
              action: () {
                Get.until((route) => route.isFirst);
                if (controller.firtPayment.value == false) {
                  controller.handlePayPress.call();
                } else {
                  goTo(screen: ROUTER_PAYMENT_FORM);
                }
              }),
          ButtonIconLeft(
              content: "Google Play", action: controller.handlePayPress.call),
        ],
      ),
    );
  }
}

class PaymentMethodView2 extends GetView<PaymentPresenter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ButtonIconLeft(
              content: "Credit Card",
              action: () {
                controller.checkout.call();
              }),
        ],
      ),
    );
  }
}
