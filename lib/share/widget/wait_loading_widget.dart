import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaitLoadingWidget extends StatelessWidget {
  const WaitLoadingWidget({
    Key? key,
    this.horizontalMargin = 100,
    this.borderRadius = 10,
    this.strokeWidth = 6,
    this.backgroundColor,
    this.progressColor,
    this.textStyle,
  }) : super(key: key);

  final double horizontalMargin;
  final double borderRadius;
  final double strokeWidth;
  final Color? backgroundColor;
  final Color? progressColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) => FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          width: widthScreen(),
          height: widthScreen() - horizontalMargin,
          margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
          decoration: BoxDecoration(
              color: backgroundColor ?? Colors.blue[200],
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                      strokeWidth: strokeWidth,
                      color: progressColor ?? Colors.blue[600]),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    Localy.of(Get.context!)!.waitLoadingMessage,
                    style: textStyle ??
                        AppStyles.typeTextNormal(color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
