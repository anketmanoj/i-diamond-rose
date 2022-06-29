import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText(
      {Key? key,
      required this.alignment,
      required this.margin,
      required this.text})
      : super(key: key);

  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry margin;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: margin,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(color: AppColors.white),
      ),
    );
  }
}
