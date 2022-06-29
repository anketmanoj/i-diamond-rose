import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileSocialDetail {
  Widget dividerLogin({Color? color, double? height}) => Expanded(
          child: Divider(
        color: color ?? AppColors.black,
        height: height ?? 5,
      ));

  Widget textFormField(
      {String? hintText,
      RxBool? obscureText,
      String? errorText,
      final int? maxLength,
      required Function(String value)? onChanged,
      required Function(String) onSubmitted,
      required FocusNode focusNode,
      int? maxLines = 1,
      required TextEditingController controller}) {
    return Container(
        child: TextFormField(
            onChanged: onChanged,
            maxLength: maxLength,
            obscureText: false,
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                counterStyle:
                    AppStyles.typeTextNormal(color: AppColors.white, size: 12),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(6))),
                errorText: errorText,
                hintText: hintText,
                hintStyle:
                    AppStyles.typeText18(color: AppColors.white, size: 14),
                focusColor: Colors.white,
                contentPadding: EdgeInsets.all(20)),
            onFieldSubmitted: onSubmitted,
            focusNode: focusNode,
            maxLines: maxLines,
            controller: controller));
  }
}
