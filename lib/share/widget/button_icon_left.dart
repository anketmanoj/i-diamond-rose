import 'package:flutter/material.dart';

class ButtonIconLeft extends StatelessWidget {
  ButtonIconLeft({
    Key? key,
    required this.content,
    required this.action,
    this.padding = 15,
    this.color,
    this.active = true,
    this.textStyle,
    this.radius,
    this.leftIcon,
  }) : super(key: key);

  final String content;
  final VoidCallback action;
  final double padding;
  final Color? color;
  final bool active;
  final TextStyle? textStyle;
  final double? radius;
  final Widget? leftIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active ? action : null,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 5))),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(content,
                    style: textStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: leftIcon ?? SizedBox.shrink(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
