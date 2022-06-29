import 'package:diamon_rose_app/presentation/screen/payment/payment_presenter.dart';
import 'package:diamon_rose_app/presentation/screen/payment/widget/tooltrip_widget.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_icon_left.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/text_field_default.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentInformationView extends GetView<PaymentPresenter> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: appBarApp(
            isGradientBackground: true,
            backgroundColor: AppColors.white,
            title: Localy.of(context)!.paymentMethodLabel,
            titleColor: AppColors.black,
            iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.black),
            actIconLeft: goBack),
        body: Container(
          color: AppColors.white,
          child: Column(
            children: [
              heightSpace(10),
              Image(image: AssetImage("${PNG_URL}stripe_payment.png")),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFieldDefault(
                  textStyle: AppStyles.typeTextNormal(size: 15),
                  hint: Localy.of(context)!.paymentUserNameHint,
                  hintStyle: AppStyles.typeTextNormal(
                      size: 16, color: AppColors.greyDarkLittle),
                  textController: controller.nameController,
                  borderColor: AppColors.greyDark,
                ),
              ),
              Stack(
                children: [
                  Container(
                      height: heightScreen(percent: 30),
                      width: widthScreen(),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: TextFieldDefault(
                              textStyle: AppStyles.typeTextNormal(size: 15),
                              hint: Localy.of(context)!.numberPaymentHint,
                              hintStyle: AppStyles.typeTextNormal(
                                  size: 16, color: AppColors.greyDarkLittle),
                              textController: controller.numberController,
                              borderColor: AppColors.greyDark,
                            ),
                          ),
                          Flexible(
                              flex: 1,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    //height: 70,
                                    width: widthScreen() / 2.2,
                                    child: TextFieldDefault(
                                      onChanged: (value) {
                                        controller.cardDetails
                                            .copyWith(number: value);
                                      },
                                      textStyle:
                                          AppStyles.typeTextNormal(size: 15),
                                      hint: Localy.of(context)!
                                          .paymentUserNameHint,
                                      hintStyle: AppStyles.typeTextNormal(
                                          size: 16,
                                          color: AppColors.greyDarkLittle),
                                      textController: controller.dateController,
                                      borderColor: AppColors.greyDark,
                                    ),
                                  ),
                                  Container(
                                    //height: 70,
                                    width: widthScreen() / 2.2,
                                    child: TextFieldDefault(
                                      obscureText: true,
                                      onChanged: (value) {
                                        controller.cardDetails
                                            .copyWith(number: value);
                                      },
                                      textStyle:
                                          AppStyles.typeTextNormal(size: 15),
                                      hint: Localy.of(context)!.datePaymentHint,
                                      hintStyle: AppStyles.typeTextNormal(
                                          size: 16,
                                          color: AppColors.greyDarkLittle),
                                      textController: controller.cCVController,
                                      borderColor: AppColors.greyDark,
                                    ),
                                  )
                                ],
                              )),
                        ],
                      )),
                  Positioned(
                      top: heightScreen() / 13,
                      right: widthScreen() / 2.6,
                      child: Obx(() => customToolTrip(context, controller)))
                ],
              ),
              Obx(() => controller.isValidation.value == true
                  ? Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 80,
                      width: widthScreen(),
                      decoration: BoxDecoration(
                        color: AppColors.greyDarkLittle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          Localy.of(context)!.paymentWarningText,
                          style:
                              AppStyles.typeTextNormal(color: AppColors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : SizedBox()),
              Spacer(
                flex: 6,
              ),
              Container(
                  height: 60,
                  width: widthScreen() / 1.5,
                  color: Colors.white,
                  child: ButtonIconLeft(
                    content: Localy.of(context)!.textSubmitButton,
                    textStyle: AppStyles.typeTextNormal(
                        size: 20, color: AppColors.white),
                    radius: 40,
                    active: true,
                    action: controller.paymentValidate.call,
                    color: AppColors.black,
                  )),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ));
  }
}
