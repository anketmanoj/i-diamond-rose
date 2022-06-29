import 'package:diamon_rose_app/presentation/screen/login/login_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginDetail {
  Widget dividerLogin({Color? color, double? height}) => Expanded(
          child: Divider(
        color: color ?? AppColors.black,
        height: height ?? 5,
      ));

  Widget textFormFieldLogin(
      {String? hintText,
      bool? isPassword,
      RxBool? obscureText,
      String? errorText,
      final int? maxLength,
      required Function(String value)? onChanged}) {
    final loginController = Get.put(LoginPresenter());
    return Container(
        child: TextFormField(
      onChanged: onChanged,
      maxLength: maxLength,
      obscureText: checkObscureText(
          isPassword: isPassword, seed: loginController.obscureText.value),
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(6))),
          errorText: errorText,
          suffixIcon: isPassword == false
              ? null
              : Obx(
                  () => IconButton(
                    color: AppColors.white,
                    icon: Icon(loginController.obscureText.value == true
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: loginController.changeStatePasswords.call,
                  ),
                ),
          hintText: hintText,
          hintStyle: AppStyles.typeText18(color: AppColors.white, size: 14),
          focusColor: Colors.white,
          contentPadding: EdgeInsets.all(20)),
    ));
  }

  Widget textButtonLoginScreen(
          {required String title,
          bool isRegister = true,
          HexColor? textColor,
          void Function()? onPressed}) =>
      TextButton(
          onPressed: onPressed,
          child: Text(
            getLocalize(title),
            style: AppStyles.typeUnderline(16, textColor),
          ));

  bool checkObscureText({bool? isPassword, required bool seed}) {
    if (isPassword == false) {
      return false;
    }

    return seed;
  }
}
