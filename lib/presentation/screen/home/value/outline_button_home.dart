import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';

Widget OutlineButtonHome({Widget? child, Function()? onPressed}) {
  return OutlinedButton(
      style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
              color: Colors.transparent, width: 0, style: BorderStyle.solid)),
          visualDensity: VisualDensity.compact,
          foregroundColor: MaterialStateProperty.all(AppColors.white)),
      onPressed: onPressed,
      child: child!);
}
