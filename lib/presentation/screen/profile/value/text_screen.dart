import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonProfileScreen {
  Padding TextWidgetNormal(
          {required String content,
          TextStyle? style,
          TextAlign? textAlign,
          double? verticalSize}) =>
      Padding(
        padding: EdgeInsets.symmetric(vertical: verticalSize ?? 5),
        child: Text(content,
            style: style ?? AppStyles.typeTextNormal(size: 14),
            textAlign: textAlign ?? TextAlign.start),
      );

  ListTile buildPickerImageItem(String label, IconData icon,
          {TextStyle? textStyle,
          Null Function()? onPressed,
          ProfileViewModel? profileViewModel}) =>
      ListTile(
        horizontalTitleGap: 0,
        onTap: onPressed,
        leading: Icon(icon),
        title: TextWidgetNormal(content: label, style: textStyle),
      );

  UnderlineInputBorder textFieldBorder() => UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Get.find<UserInformationViewModel>().isUpdateIntroduce.value
              ? AppColors.greyDark
              : Colors.transparent,
        ),
      );

  Widget buildImage() {
    return GetBuilder<UserInformationViewModel>(
        init: Get.find<UserInformationViewModel>(),
        builder: (controller) {
          return ExtendedImage(
            image: controller.provider!,
            height: 400,
            width: 400,
            extendedImageEditorKey: controller.editorKey,
            mode: ExtendedImageMode.editor,
            fit: BoxFit.contain,
            initEditorConfigHandler: (_) => EditorConfig(
              maxScale: 8,
              cropRectPadding: const EdgeInsets.all(20),
              hitTestSize: 20,
              cropAspectRatio: 2 / 1,
            ),
          );
        });
  }
}
