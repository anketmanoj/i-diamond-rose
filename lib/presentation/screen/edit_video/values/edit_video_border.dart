import 'package:diamon_rose_app/presentation/screen/edit_video/edit_video_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';

class EditVideoBorder {
  List<Widget> BuildBorder(EditVideoViewModel controller) {
    final vertical = controller.verticalPadding;
    final horizontal = controller.horizontalPadding;
    final color = AppColors.black;
    return [
      Container(
        color: color,
        height: vertical,
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: color,
          height: vertical,
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          color: color,
          width: horizontal,
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          color: color,
          width: horizontal,
        ),
      ),
    ];
  }
}
