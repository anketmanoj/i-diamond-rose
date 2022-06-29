import 'package:diamon_rose_app/presentation/screen/sign_up/otp_confirm_viewmodel.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpConfirmView extends GetView<OtpConfirmViewModel> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: OtpConfirmViewModel(),
        builder: (builder) {
          return CustomScaffold(
            enableSingleScrollView: false,
            body: _body(context, controller),
          );
        });
  }

  Column _body(BuildContext context, OtpConfirmViewModel otpConfirmViewModel) =>
      Column(
        children: [
          heightSpace(50),
          Row(
            children: [
              widthSpace(30),
              Icon(Icons.arrow_back_ios, color: AppColors.white),
              Text(
                Localy.of(context)!.registerAnotherEmailLabel,
                style: TextStyle(color: AppColors.white),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              heightSpace(50),
              Text(
                Localy.of(context)!.registerAccountLabel,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              heightSpace(20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  Localy.of(context)!.emailWasSendLabel,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.white, fontSize: 15),
                ),
              ),
              heightSpace(40),
              Obx(
                () => Align(
                  alignment: Alignment.center,
                  child: Text(
                    "OTPが ${controller.counter.value} 秒まで有効です。",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white, fontSize: 15),
                  ),
                ),
              ),
              heightSpace(10),
              _listEditText(controller),
              heightSpace(10),
              Obx(() => controller.counter.value == 0
                  ? TextButton(
                      onPressed: controller.resendCode.call,
                      child: Text(
                        Localy.of(context)!.resendLabel,
                        style: TextStyle(color: AppColors.white, fontSize: 15),
                      ),
                    )
                  : Container()),
            ],
          )
        ],
      );

  Widget _listEditText(OtpConfirmViewModel otpConfirmViewModel) =>
      PinCodeTextField(
        length: 6,
        obscureText: false,
        animationType: AnimationType.fade,
        cursorColor: AppColors.white,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          activeFillColor: Colors.white,
          inactiveColor: AppColors.white,
          activeColor: AppColors.white,
          disabledColor: AppColors.white,
          selectedColor: AppColors.white,
          selectedFillColor: AppColors.white,
          inactiveFillColor: AppColors.white,
        ),
        animationDuration: Duration(milliseconds: 300),

        enableActiveFill: true,
        // errorAnimationController: errorController,
        // controller: textEditingController,
        onCompleted: otpConfirmViewModel.submitOTP.call,
        onChanged: (value) {},
        beforeTextPaste: (text) {
          //if you return true then it will show the paste confirmation dialog.
          // Otherwise if false, then nothing will happen.
          //but you can show anything you want here,
          // like your pop up saying wrong paste format or etc
          return true;
        },
        appContext: otpConfirmViewModel.context!,
        keyboardType: TextInputType.number,
      );
}
