import 'package:diamon_rose_app/share/utils/debouncer.dart';
import 'package:flutter/material.dart';

class InputDebounceWidget extends StatefulWidget {
  InputDebounceWidget({
    this.labelTitleInput = "",
    required this.keyboardType,
    this.isFieldPassword = false,
    this.labelHint = "",
    this.errorText,
    this.initialValue,
    this.maxLength,
    this.customController,
    this.onChanged,
    this.readOnly = false,
    this.counterText = "",
    this.debounce = false,
    this.milliseconds = 200,
    this.iconLeft = Icons.search,
    this.hideIconLeft = true,
    this.borderColor = Colors.grey,
    this.focusedBorderColors = Colors.blue,
    this.colorIconLeft = Colors.blue,
    this.cursorColor = Colors.grey,
    this.borderRadius = 6,
  });

  final String labelTitleInput;
  final TextInputType keyboardType;
  final bool isFieldPassword;
  final String labelHint;
  final String? errorText;
  final String? initialValue;
  final int? maxLength;
  final TextEditingController? customController;
  final bool readOnly;
  final String counterText;
  final bool debounce;
  final int milliseconds;
  final IconData? iconLeft;
  final bool hideIconLeft;
  final Color borderColor;
  final Color focusedBorderColors;
  final Color colorIconLeft;
  final Color cursorColor;
  final double borderRadius;
  final Function(String text)? onChanged;

  @override
  _InputDebounceWidgetState createState() => _InputDebounceWidgetState();
}

class _InputDebounceWidgetState extends State<InputDebounceWidget> {
  FocusNode focusNode = new FocusNode();
  Subscription? _debounceSubscription;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 20),
        padding: EdgeInsets.all(0),
        child: TextFormField(
            focusNode: focusNode,
            readOnly: widget.readOnly,
            initialValue: widget.initialValue,
            onChanged: (String value) => onChanged(context, value),
            maxLength: widget.maxLength,
            cursorColor: widget.cursorColor,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              alignLabelWithHint: true,
              prefixIcon: Padding(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 0),
                child: iconLeftWidget(),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              counterText: widget.counterText,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor, width: 1),
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.borderRadius))),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: widget.focusedBorderColors, width: 1),
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.borderRadius))),
              border: OutlineInputBorder(),
              hintText: widget.labelHint,
              labelText: widget.labelTitleInput,
              errorText: widget.errorText,
              hintStyle: TextStyle(color: Colors.grey),
              labelStyle: TextStyle(color: Colors.grey),
            ),
            keyboardType: widget.keyboardType,
            obscureText: widget.isFieldPassword,
            controller: widget.customController,
            style: TextStyle(color: Colors.black)));
  }

  Widget? iconLeftWidget() {
    if (widget.hideIconLeft) {
      return null;
    }
    return Icon(
      widget.iconLeft,
      size: 28,
      color: focusNode.hasFocus ? widget.colorIconLeft : widget.borderColor,
    );
  }

  Debounce _bouncer(BuildContext context) {
    if (widget.debounce) {
      return TimerBouncer(Duration(milliseconds: widget.milliseconds));
    } else {
      return NoDebounce();
    }
  }

  void onChanged(BuildContext context, String value) {
    if (widget.onChanged != null) {
      _debounceSubscription = _bouncer(context).debounce(
        request: () => _longRunningRequest(value),
        responseHandler: _responseHandler,
        oldSubscription: _debounceSubscription,
      );
    }
  }

  Future<String> _longRunningRequest(String search) {
    return Future.delayed(
      Duration(milliseconds: widget.milliseconds),
      () => search,
    );
  }

  void _responseHandler(String result) {
    setState(() {
      widget.onChanged!(result);
    });
  }
}
