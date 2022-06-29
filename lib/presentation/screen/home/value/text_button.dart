import 'package:flutter/material.dart';

Widget TextButtonTabBar(
    {String? title, void Function()? onPressed, bool isActive = false}) {
  return TextButton(
      onPressed: onPressed,
      child: Text(title ?? "",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: isActive == false ? Colors.white70 : Colors.white)));
}
