import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/user_profile_info_drop_down_button.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/app_platform.dart';
import 'package:diamon_rose_app/share/widget/text_field_default.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldUserProfileInfo extends StatelessWidget {
  const TextFieldUserProfileInfo(
      {Key? key,
      this.textEditingController,
      this.errorText,
      this.hintText,
      this.isPhoneNumber = false,
      this.focusNode,
      this.onSubmitted,
      this.maxLength,
      this.onChanged})
      : super(key: key);
  final TextEditingController? textEditingController;

  final String? errorText;
  final String? hintText;
  final bool? isPhoneNumber;
  final FocusNode? focusNode;
  final Function(String)? onSubmitted;
  final int? maxLength;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final UserProfileInfoViewModel editInfoViewModel =
        Get.put(UserProfileInfoViewModel());
    return isPhoneNumber == false
        ? TextFieldDefault(
            textController: textEditingController!,
            contentPadding: 26,
            borderRadius: 10,
            borderColor: errorText == "" ? AppColors.white : AppColors.red,
            textInputType: TextInputType.text,
            errorCode: errorText,
            hint: hintText!,
            hintStyle: AppStyles.typeTextNormal(color: AppColors.white),
            onSubmitted: onSubmitted,
            focusNode: focusNode,
            textInputAction: TextInputAction.done,
            maxLength: maxLength,
            onChanged: onChanged,
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropDownPhoneNumber(editInfoViewModel: editInfoViewModel),
              SizedBox(width: 10),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFieldDefault(
                      textController: textEditingController!,
                      contentPadding: 26,
                      borderRadius: 10,
                      borderColor:
                          errorText == "" ? AppColors.white : AppColors.red,
                      textInputType: TextInputType.phone,
                      textInputAction: AppPlatform.isIOS
                          ? TextInputAction.done
                          : TextInputAction.none,
                      errorCode: errorText,
                      hint: hintText!,
                      maxLength: 13,
                      hintStyle:
                          AppStyles.typeTextNormal(color: AppColors.white),
                      onSubmitted: onSubmitted,
                      focusNode: focusNode,
                    )),
              )
            ],
          );
  }
}
