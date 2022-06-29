import 'package:diamon_rose_app/presentation/screen/forgot_password_otp/forgot_otp_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotOTPScreen extends GetView<ForgotOTPModel> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ForgotOTPModel(),
      builder: (builder) {
        return CustomScaffold(
            appBar: appBarApp(
              isGradientBackground: false,
              title: Localy.of(context)!.forgotOTPTitle,
              titleColor: AppColors.white,
              iconLeft:
                  Icon(Icons.arrow_back_ios, size: 24, color: AppColors.white),
              actIconLeft: Get.back,
            ),
            enableSingleScrollView: true,
            body: _body(context, controller));
      },
    );
  }

  Widget _body(BuildContext context, ForgotOTPModel forgotOTPModel) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          heightSpace(70),
          Text(
            Localy.of(context)!.checkOTPMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 15,
            ),
          ),
          heightSpace(40),
          Obx(
            () => Text(
              "${Localy.of(context)!.countOTPMessage1} "
              "${controller.counter.value}"
              "${Localy.of(context)!.countOTPMessage2}",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.white, fontSize: 10),
            ),
          ),
          heightSpace(20),
          _otpTextField(context, forgotOTPModel),
          heightSpace(25),
          GestureDetector(
            onTap: () => forgotOTPModel.resendCode(context),
            child: Text(
              Localy.of(context)!.resendOTPText,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.white, fontSize: 15),
            ),
          ),
        ],
      );

  Widget _otpTextField(BuildContext context, ForgotOTPModel forgotOTPModel) =>
      Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: PinCodeTextField(
          keyboardType: TextInputType.number,
          length: 6,
          obscureText: false,
          animationType: AnimationType.fade,
          cursorColor: AppColors.white,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          controller: forgotOTPModel.otpController,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
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
          // onCompleted: otpConfirmViewModel.submitOTP.call,
          beforeTextPaste: (text) {
            //if you return true then it will show the paste confirmation dialog
            // Otherwise if false, then nothing will happen.
            //but you can show anything you want here,
            // like your pop up saying wrong paste format or etc
            return true;
          },
          onCompleted: forgotOTPModel.submitOTP.call,
          appContext: context,
          onChanged: (String value) {},
        ),
      );
}
