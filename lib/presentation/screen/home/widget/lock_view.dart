import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';

class LockView extends StatelessWidget {
  const LockView({Key? key, this.child, this.height, this.width})
      : super(key: key);
  final Widget? child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightScreen(),
        width: widthScreen(),
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0),
                  Colors.black,
                ],
                stops: [
                  0.0,
                  1.0
                ])),
        child: Stack(
          children: [
            SizedBox.expand(
                child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: width,
                height: height,
                child: child,
              ),
            )),
          ],
        ));
  }
}

Future<void> unLockView(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return Container(
          height: heightScreen(percent: 60),
          width: widthScreen(),
          color: AppColors.white,
        );
      });
}
