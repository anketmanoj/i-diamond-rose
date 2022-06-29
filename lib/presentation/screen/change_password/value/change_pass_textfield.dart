import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      required this.controller,
      this.errorText,
      this.obscureText = false,
      this.isHiddenPass = true,
      this.action,
      this.errorColor,
      this.focusNode,
      this.onFieldSubmitted,
      this.maxLength})
      : super(key: key);
  final String label;
  final TextEditingController controller;
  final String? errorText;
  final bool obscureText;
  final bool isHiddenPass;
  final Function()? action;
  final HexColor? errorColor;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    final FocusNode focus = focusNode ?? new FocusNode();
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focus,
      style: AppStyles.typeText18(color: AppColors.white),
      obscureText:
          checkObscureText(isPassword: obscureText, seed: isHiddenPass),
      controller: controller,
      decoration: InputDecoration(
        errorText: errorText ?? null,
        errorStyle: AppStyles.typeText18(size: 12, color: AppColors.red),
        contentPadding: EdgeInsets.all(22),
        labelText: label,
        fillColor: AppColors.white,
        border: _borderTextForm(borderRadius: 5),
        disabledBorder: _borderTextForm(borderRadius: 5),
        enabledBorder: _borderTextForm(borderRadius: 5),
        errorBorder: _borderTextForm(
            borderRadius: 5,
            color: errorText == "" ? AppColors.white : AppColors.red),
        focusedBorder: _borderTextForm(borderRadius: 5),
        focusedErrorBorder: _borderTextForm(borderRadius: 5),
        hintStyle: AppStyles.typeTextNormal(color: AppColors.white),
        labelStyle: AppStyles.typeText18(size: 15, color: AppColors.white),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        counterText: "",
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: obscureText
              ? IconButton(
                  icon: Icon(
                    isHiddenPass ? Icons.visibility_off : Icons.visibility,
                    size: 25,
                    color: AppColors.white,
                  ),
                  onPressed: action ?? null,
                )
              : null,
        ),
      ),
      // suffixIcon: Icons.visibility,
      maxLength: maxLength,
    );
  }

  OutlineInputBorder _borderTextForm(
      {double borderRadius = 0, HexColor? color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? AppColors.white, width: 2),
        borderRadius: BorderRadius.circular(borderRadius));
  }

  bool checkObscureText({bool? isPassword, required bool seed}) {
    if (isPassword == false) {
      return false;
    }

    return seed;
  }
}
