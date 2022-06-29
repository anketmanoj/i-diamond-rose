import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/dropdown_date_picker.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/gender_radio_button.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/text_field_widget.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/title_text.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/user_profile_info_drop_down_button.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/user_profile_info_drop_down_item.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class UserProfileInfoScreen extends GetView<UserProfileInfoViewModel> {
  final bool _isProfile = LocalStorageKeys.isEditProfile;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomScaffold(
          appBar: appBarApp(
              isGradientBackground: false,
              title: _isProfile
                  ? Localy.of(context)!.profileEditingText
                  : Localy.of(context)!.editInfoMenu,
              titleColor: AppColors.white,
              iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.white),
              actIconLeft: goBack),
          enableSingleScrollView: true,
          body: _bodyRegister(context),
          bottomBar: _footer(context, controller.isActive()),
        ));
  }

  Widget _bodyRegister(BuildContext context) => Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Column(
          children: [
            _isProfile
                ? TitleText(
                    text: Localy.of(context)!.displayName.substring(0, 3),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  )
                : Container(),
            TextFieldUserProfileInfo(
              textEditingController: controller.nameController,
              errorText: controller.nameError.value,
              hintText: Localy.of(context)!.displayName,
              focusNode: controller.fullNameFocus,
              onSubmitted: (value) => controller.submitDisplayName(),
              onChanged: (value) => controller.submitDisplayName(),
            ),
            SizedBox(
              height: heightScreen(percent: 1),
            ),
            _isProfile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                        text: Localy.of(context)!.editProfile,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: heightScreen(percent: 2),
                      ),
                      Text(
                        controller.emailLabel.value,
                        style: AppStyles.typeTextNormal(color: AppColors.white),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: heightScreen(percent: 2),
                      ),
                      TitleText(
                        text: Localy.of(context)!.passwordText,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: heightScreen(percent: 1),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Localy.of(context)!.labelPassword,
                            style:
                                AppStyles.typeTextNormal(color: AppColors.white)
                                    .copyWith(letterSpacing: 4),
                            textAlign: TextAlign.left,
                          ),
                          TextButton(
                              onPressed: () =>
                                  Get.toNamed(ROUTER_RESET_PASSWORD),
                              child: Text(
                                Localy.of(context)!.changeText,
                                style: AppStyles.typeTextNormal(
                                    color: AppColors.white),
                              ))
                        ],
                      ),
                    ],
                  )
                : TextFieldUserProfileInfo(
                    textEditingController: controller.userNameController,
                    errorText: controller.userNameError.value,
                    hintText: Localy.of(context)!.userNameLabel,
                    focusNode: controller.userNameFocus,
                    maxLength: 20,
                    onSubmitted: (value) => controller.submitUserName(),
                    onChanged: (value) => controller.submitUserName(),
                  ),
            TextFieldUserProfileInfo(
              textEditingController: controller.phoneNumberController,
              errorText: controller.phoneError.value,
              isPhoneNumber: true,
              hintText: Localy.of(context)!.phoneNumberEmptyLabel,
              focusNode: controller.phoneFocus,
              onSubmitted: (value) => controller.submitPhone(),
              onChanged: (value) => controller.submitPhone(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  text: _isProfile
                      ? Localy.of(context)!.userNationality.substring(0, 2)
                      : Localy.of(context)!.userNationality,
                ),
                DropDownArea(userProfileInfoViewModel: controller)
              ],
            ),
            TitleText(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, bottom: 10),
              text: _isProfile
                  ? Localy.of(context)!.userGender.substring(0, 2)
                  : Localy.of(context)!.userGender,
            ),
            GenderRadioButton(
              userProfileInfoViewModel: controller,
            ),
            TitleText(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, bottom: 10),
              text: _isProfile
                  ? Localy.of(context)!.dayOfBirth.substring(0, 4)
                  : Localy.of(context)!.dayOfBirth,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDatePicker(
                    value: controller.year.value,
                    listItems: UserProfileInfoDropDownItem()
                        .getListYearsDropDownItem(),
                    opTap: (value) => controller.changeYear(value),
                    title: Localy.of(context)!.year),
                CustomDatePicker(
                    value: controller.month.value,
                    listItems: UserProfileInfoDropDownItem()
                        .getListMonthsDropDownItem(),
                    opTap: (value) => controller.changeMonth(value),
                    title: Localy.of(context)!.month,
                    width: 25),
                CustomDatePicker(
                    value: controller.day.value,
                    listItems:
                        UserProfileInfoDropDownItem().getListDaysDropDownItem(),
                    opTap: (value) => controller.changeDate(value),
                    title: Localy.of(context)!.day,
                    width: 25),
              ],
            ),
            SizedBox(
              height: heightScreen(percent: 2),
            ),
            _isProfile
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Localy.of(context)!.labelSNS,
                        style: AppStyles.typeTextNormal(color: AppColors.white)
                            .copyWith(letterSpacing: 4),
                        textAlign: TextAlign.left,
                      ),
                      TextButton(
                          onPressed: controller.goToEditSocial,
                          child: Text(
                            Localy.of(context)!.changeText,
                            style: AppStyles.typeTextNormal(
                                color: AppColors.white),
                          ))
                    ],
                  )
                : Container(),
            Container(
              height: heightScreen(percent: 9),
            )
          ],
        ),
      );

  Widget _footer(BuildContext context, bool isActive) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        width: widthScreen(),
        height: heightScreen(percent: 9),
        child: Container(
          height: heightScreen(percent: 10),
          width: widthScreen(percent: 80),
          child: ButtonAction(
            verticalPadding: 0,
            action: controller.submitForm.call,
            content: _isProfile
                ? Localy.of(context)!.changeText
                : Localy.of(context)!.labelNext,
            color: isActive ? AppColors.white : AppColors.greyDarkLittle,
            textStyle: AppStyles.typeTextNormal(color: AppColors.black),
            active: isActive,
          ),
        ),
      );
}
