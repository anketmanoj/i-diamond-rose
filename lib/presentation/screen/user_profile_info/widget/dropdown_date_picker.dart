import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';

Widget CustomDatePicker(
    {required List<DropdownMenuItem<String>> listItems,
    required Function(String?) opTap,
    required String value,
    String? title,
    int? width}) {
  return Container(
      margin: EdgeInsets.only(top: 5),
      width: widthScreen(percent: width ?? 30),
      padding: EdgeInsets.only(left: 2, right: 2, top: 5),
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.1),
        border: Border.all(
          color: Colors.transparent,
          width: 2,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5), topRight: Radius.circular(5)),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title ?? "",
              style: TextStyle(color: AppColors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: SizedBox(
                width: widthScreen(percent: 30),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                  style: TextStyle(color: AppColors.white),
                  dropdownColor: AppColors.black,
                  focusColor: AppColors.white,
                  iconEnabledColor: AppColors.white,
                  isExpanded: true,
                  value: value,
                  items: listItems,
                  onChanged: opTap,
                ))),
          ),
          Container(
            width: widthScreen(percent: 90),
            height: 2,
            color: AppColors.white,
          )
        ],
      ));
}
