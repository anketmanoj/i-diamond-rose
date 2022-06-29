import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatefulWidget {
  OutlineButtonWidget(
      {required this.text,
      required this.textColor,
      required this.borderColor,
      required this.onPressed,
      this.fontSize: 14,
      this.borderRadius: 5,
      this.foregroundColor = Colors.white,
      this.backgroundColor = Colors.white,
      this.elevation = 0,
      this.paddingVertical = 0,
      this.paddingHorizontal = 0});

  final String text;
  final double? fontSize;
  final HexColor textColor;
  final HexColor borderColor;
  final double borderRadius;
  final double elevation;
  final Color foregroundColor;
  final Color backgroundColor;
  final double paddingVertical;
  final double paddingHorizontal;
  final Function()? onPressed;

  @override
  _OutlineButtonWidgetState createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<OutlineButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(widget.foregroundColor),
            backgroundColor:
                MaterialStateProperty.all<Color>(widget.backgroundColor),
            elevation: MaterialStateProperty.all<double>(widget.elevation),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(
                left: widget.paddingHorizontal,
                right: widget.paddingHorizontal,
                top: widget.paddingVertical,
                bottom: widget.paddingVertical)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    side: BorderSide(color: widget.borderColor)))),
        onPressed: widget.onPressed,
        child: Text(widget.text,
            style:
                TextStyle(fontSize: widget.fontSize, color: widget.textColor)));
  }
}
