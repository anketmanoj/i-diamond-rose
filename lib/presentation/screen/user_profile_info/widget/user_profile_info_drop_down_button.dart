// ignore_for_file: lines_longer_than_80_chars

import 'package:date_time_picker/date_time_picker.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/widget/user_profile_info_drop_down_item.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget DropDownTimeWidget({int? size}) {
  final UserProfileInfoViewModel editInfoViewModel =
      Get.put(UserProfileInfoViewModel());
  final BuildContext context = editInfoViewModel.context!;
  return Container(
    width: widthScreen(percent: size),
    padding: EdgeInsets.only(top: 5),
    decoration: BoxDecoration(
      color: Colors.transparent.withOpacity(0.1),
      border: Border.all(
        color: Colors.transparent,
        width: 2,
      ),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8), topRight: Radius.circular(8)),
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    widthSpace(45),
                    TextValue(Localy.of(context)!.year),
                    widthSpace(35),
                    TextValue(Localy.of(context)!.month),
                    widthSpace(30),
                    TextValue(Localy.of(context)!.day),
                  ],
                ),
                SizedBox(
                  width: widthScreen(percent: size! - 5),
                  child: DateTimePicker(
                    type: DateTimePickerType.date,
                    dateMask: 'yyyy    MM      dd',
                    firstDate: DateTime(1920),
                    lastDate: DateTime.now(),
                    style: TextStyle(
                      color: AppColors.white,
                    ),
                    icon: Icon(
                      Icons.event,
                      size: 20,
                      color: AppColors.white,
                    ),
                    initialDate: DateTime.now(),
                    controller: editInfoViewModel.dateOfBirthController,
                    onFieldSubmitted: editInfoViewModel.changeDateOfBirth.call,
                    onChanged: editInfoViewModel.changeDateOfBirth.call,
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: editInfoViewModel.changeDateOfBirth.call,
                  ),
                )
              ],
            ),
          ]),
        ),
        Container(
          width: widthScreen(percent: size - 2),
          height: 2,
          color: AppColors.white,
        )
      ],
    ),
  );
}

Widget DropDownPhoneNumber({UserProfileInfoViewModel? editInfoViewModel}) =>
    Container(
        margin: EdgeInsets.only(top: 20),
        width: widthScreen(percent: 25),
        padding: EdgeInsets.only(left: 2, right: 2, top: 5),
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.1),
          border: Border.all(
            color: Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
        ),
        child: Obx(
          () => Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${editInfoViewModel!.phoneNumberItem.value.countryName}",
                          style: TextStyle(color: AppColors.white),
                        ),
                        Stack(
                          children: [
                            Positioned(
                              bottom: 15,
                              child: Text(
                                editInfoViewModel
                                    .phoneNumberItem.value.countryCode,
                                style: AppStyles.typeText18(
                                    color: AppColors.white, size: 17),
                              ),
                            ),
                            SizedBox(
                              width: widthScreen(percent: 20),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                    style: TextStyle(color: AppColors.white),
                                    dropdownColor: AppColors.black,
                                    focusColor: AppColors.white,
                                    iconEnabledColor: AppColors.white,
                                    isExpanded: true,
                                    value: editInfoViewModel
                                            .phoneNumberItem.value.countryCode
                                            .contains("null")
                                        ? AppData().listCountryPhone[0]
                                        : null,
                                    items: UserProfileInfoDropDownItem()
                                        .getListPhoneNumberDropDownItem(),
                                    onChanged: editInfoViewModel
                                        .changeArePhoneNumber.call),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: widthScreen(percent: 90),
                height: 2,
                color: AppColors.white,
              )
            ],
          ),
        ));

Widget DropDownArea({UserProfileInfoViewModel? userProfileInfoViewModel}) =>
    GetBuilder(
        initState: (state) => userProfileInfoViewModel!.getCountries(),
        init: userProfileInfoViewModel,
        builder: (builder) {
          return Container(
              margin: EdgeInsets.only(top: 5),
              width: widthScreen(percent: 40),
              padding: EdgeInsets.only(left: 2, right: 2, top: 5),
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.1),
                border: Border.all(
                  color: Colors.transparent,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(
                            width: widthScreen(percent: 35),
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                              style: TextStyle(color: AppColors.white),
                              dropdownColor: AppColors.black,
                              focusColor: AppColors.white,
                              iconEnabledColor: AppColors.white,
                              isExpanded: true,
                              value: userProfileInfoViewModel!.countryId.value,
                              items: UserProfileInfoDropDownItem()
                                  .getListAreaDropDownItem(),
                              onChanged:
                                  userProfileInfoViewModel.getCountryId.call,
                            ))),
                      ],
                    ),
                  ),
                  Container(
                    width: widthScreen(percent: 90),
                    height: 2,
                    color: AppColors.white,
                  )
                ],
              ));
        });

Text TextValue(String? title) {
  return Text(
    title!,
    style: TextStyle(color: AppColors.white),
  );
}
