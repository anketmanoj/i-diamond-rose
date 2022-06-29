import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/shimmer_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum OptionRadio { packageContent, materialContent }
enum VideoType { FREE, PAID }

class VideoSettingsDetail {
  Widget textFormField({
    String? hintText,
    RxBool? obscureText,
    String? errorText,
    final int? minLines,
    final int? maxLength,
    final int? maxLines,
    final double? width,
    final double? height,
    final Widget? suffixIcon,
    final TextEditingController? textEditingController,
    final Function()? onTap,
    required Function(String value)? onChanged,
    FocusNode? focusNode,
  }) {
    return Container(
        width: width,
        height: height,
        child: TextFormField(
          onTap: onTap,
          maxLength: maxLength,
          minLines: minLines,
          maxLines: maxLines,
          onChanged: onChanged,
          controller: textEditingController,
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          focusNode: focusNode,
          decoration: InputDecoration(
            semanticCounterText: textEditingController!.text,
            counterStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(6))),
            errorText: errorText,
            hintText: hintText,
            hintStyle: AppStyles.typeText18(color: AppColors.white, size: 14),
            focusColor: Colors.white,
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
        ));
  }

  Widget customRadioGroup({
    required BuildContext context,
    required OptionRadio value,
    required void Function(OptionRadio?) onChange,
  }) {
    return Container(
      height: 30,
      child: OverflowBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _itemRadio(
                title: Localy.of(context)!.labelPackageContent,
                onChange: onChange,
                groupValue: value,
                value: OptionRadio.packageContent),
            _itemRadio(
                title: Localy.of(context)!.labelMaterialContent,
                onChange: onChange,
                groupValue: value,
                value: OptionRadio.materialContent),
          ],
        ),
      ),
    );
  }

  Widget _itemRadio({
    required String title,
    required void Function(OptionRadio?) onChange,
    required OptionRadio groupValue,
    required OptionRadio value,
  }) {
    return Container(
        child: Expanded(
      flex: 1,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 30,
            ),
            child: Radio<OptionRadio>(
              onChanged: onChange,
              groupValue: groupValue,
              value: value,
              activeColor: AppColors.black,
            ),
          ),
        ],
      ),
    ));
  }

  Widget itemPublishContent({
    required String title,
    required void Function(bool?)? onChange,
    required bool value,
  }) {
    return Container(
        child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16),
        ),
        Spacer(),
        Checkbox(
          onChanged: onChange,
          value: value,
          activeColor: AppColors.blue,
        ),
      ],
    ));
  }

  Widget itemTextAndSwitch({
    required String title,
    required BuildContext context,
    required bool value,
    required void Function(bool) onChange,
  }) {
    return Row(
      children: [
        Text(title, style: TextStyle(color: Colors.white)),
        Spacer(),
        _buildSwitch(context, value, onChange),
      ],
    );
  }

  Widget _buildSwitch(
          BuildContext context, bool value, ValueChanged<bool> onChanged) =>
      CupertinoSwitch(
        thumbColor: AppColors.thumbSwitch,
        activeColor: AppColors.activeSwitch,
        value: value,
        onChanged: onChanged,
      );

  Widget itemSmallTextField(
      {required String title,
      required double width,
      required void Function(String) onChange,
      required TextEditingController controller,
      int? maxLine,
      int? maxLength,
      TextInputType? keyboardType,
      required TextStyle style,
      bool? isDense,
      String? errorText,
      EdgeInsetsGeometry? contentPadding,
      String? suffixIcon,
      String? counterText,
      FocusNode? focusNode}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.white)),
        Spacer(),
        Container(
          width: width,
          height: heightScreen(percent: 8),
          child: TextFormField(
            focusNode: focusNode,
            onChanged: onChange,
            controller: controller,
            maxLines: maxLine,
            maxLength: maxLength,
            keyboardType: keyboardType,
            cursorColor: AppColors.white,
            style: style,
            decoration: InputDecoration(
              isDense: isDense,
              counterText: counterText,
              errorText: errorText,
              contentPadding: contentPadding,
              border: OutlineInputBorder(),
              suffixIcon:
                  Text(suffixIcon ?? "", style: TextStyle(color: Colors.white)),
              suffixIconConstraints: BoxConstraints(
                minWidth: 2,
                minHeight: 2,
              ),
              prefix: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              errorStyle: AppStyles.typeText18(size: 11, color: AppColors.red),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.red, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.red, width: 1),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }

  Widget customDatetimePicker(
      {required void Function(String?) updateDate,
      required DateTime? startDay,
      DateTime? endDaySale,
      TextEditingController? dateController,
      bool? isDiscountDay}) {
    return Container(
      width: widthScreen() / 3 + 20,
      child: DateTimePicker(
        onFieldSubmitted: print,
        decoration: InputDecoration(
            suffixIcon: Icon(
          Icons.arrow_drop_down,
          color: Colors.white,
        )),
        type: DateTimePickerType.date,
        dateMask: 'yyyy/MM/dd',
        controller: dateController,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        style: TextStyle(
          color: AppColors.white,
        ),
        selectableDayPredicate: (date) {
          if (date.day.compareTo(DateTime.parse(dateController!.text).day) ==
                  0 &&
              date.month.compareTo(DateTime.parse(dateController.text).month) ==
                  0 &&
              date.year.compareTo(DateTime.parse(dateController.text).year) ==
                  0) {
            return true;
          }
          if (isDiscountDay != null) {
            if (date.isAfter(endDaySale!)) {
              return false;
            }
          }
          if (startDay == null) {
            if (date.isBefore(DateTime(DateTime.now().year,
                DateTime.now().month, DateTime.now().day))) {
              return false;
            }
            return true;
          } else {
            if (date.isBefore(startDay)) {
              return false;
            }
            return true;
          }
        },
        onChanged: updateDate,
      ),
    );
  }

  Widget buildThumbnail(BuildContext context, {required String imageUrl}) =>
      Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
              child: RepaintBoundary(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: imageUrl,
              placeholder: (context, url) => new Center(
                  child: Container(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => ShimmerCustom(
                  child: Container(
                      height: 100, width: 80, color: AppColors.white)),
              imageBuilder: (context, imageProvider) => Container(
                height: 100,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.white, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )));
}
