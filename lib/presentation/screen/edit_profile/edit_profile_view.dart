import 'package:date_time_picker/date_time_picker.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/edit_profile/edit_profile_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class EditProfileView extends GetView<EditProfileViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: appBarApp(
        isGradientBackground: true,
        title: Localy.of(context)!.profileEditingText,
        titleColor: AppColors.white,
        iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.white),
      ),
      body: _bodyEditProfile(context),
      bottomBar: _footer(context),
      enableSingleScrollView: true,
    );
  }

  Widget _bodyEditProfile(BuildContext context) => Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Localy.of(context)!.nickNameText,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.white),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: AppColors.white),
                    contentPadding: EdgeInsets.all(20)),
              ),
            ),
            heightSpace(10),
            Text(
              Localy.of(context)!.fullNameText,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.white),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.white),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: AppColors.white),
                    contentPadding: EdgeInsets.all(20)),
              ),
            ),
            heightSpace(10),
            Text(
              "${Localy.of(context)!.emailAddressText}:",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.white),
            ),
            heightSpace(10),
            Text(
              "XXXXXXX@gmail.com",
              style: TextStyle(color: AppColors.white),
            ),
            heightSpace(10),
            Text(
              "${Localy.of(context)!.passwordText}:",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.white),
            ),
            heightSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "***************",
                  style: TextStyle(color: AppColors.white),
                ),
                TextButton(
                    onPressed: () => Get.toNamed(ROUTER_RESET_PASSWORD),
                    child: Text(
                      Localy.of(context)!.changeText,
                      style: TextStyle(color: AppColors.white),
                    ))
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(children: [
                  Text(
                    '性別（※任意）',
                    style: TextStyle(color: AppColors.white),
                  )
                ])),
            Obx(
              () => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 30,
                          child: Radio<Sex>(
                            activeColor: AppColors.white,
                            value: Sex.male,
                            groupValue: controller.sexRadioGroupValue.value,
                            onChanged: (Sex? value) {
                              value != null
                                  ? controller.changeValueRadio(value)
                                  : null;
                            },
                          )),
                      Text("男", style: TextStyle(color: AppColors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 30,
                          child: Radio<Sex>(
                            activeColor: AppColors.white,
                            value: Sex.female,
                            groupValue: controller.sexRadioGroupValue.value,
                            onChanged: (Sex? value) {
                              value != null
                                  ? controller.changeValueRadio(value)
                                  : null;
                            },
                          )),
                      Text(
                        '女',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 30,
                          child: Radio<Sex>(
                            activeColor: AppColors.white,
                            value: Sex.others,
                            groupValue: controller.sexRadioGroupValue.value,
                            onChanged: (Sex? value) {
                              value != null
                                  ? controller.changeValueRadio(value)
                                  : null;
                            },
                          )),
                      Text(
                        '回答なし',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _makeDropDownArea(),
            Container(
                margin: EdgeInsets.only(top: 5, bottom: 7),
                child: Row(children: [
                  Text(
                    '生年月日',
                    style: TextStyle(color: AppColors.white),
                  )
                ])),
            _makeDropDownTime(50),
            Container(
              height: heightScreen(percent: 9),
            )
          ],
        ),
      );

  Container _makeDropDownArea() => Container(
      width: widthScreen(percent: 90),
      padding: EdgeInsets.only(left: 2, right: 2, top: 5),
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.1),
        border: Border.all(
          color: Colors.transparent,
          width: 2,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "エリアの選択",
                      style: TextStyle(color: AppColors.white),
                    ),
                    SizedBox(
                        width: widthScreen(percent: 80),
                        child: Obx(() => DropdownButtonHideUnderline(
                              child: DropdownButton(
                                style: TextStyle(color: AppColors.white),
                                dropdownColor: AppColors.black,
                                focusColor: AppColors.white,
                                iconEnabledColor: AppColors.white,
                                isExpanded: true,
                                value: controller.itemAreaSelected.value,
                                items: _getListAreaDropDownItem(),
                                onChanged: (dynamic value) => {
                                  print(value)
                                  // controller.itemAreaSelected.value = value;
                                },
                              ),
                            ))),
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
      ));

  List<DropdownMenuItem> _getListAreaDropDownItem() {
    final list = <DropdownMenuItem>[];
    controller.listOfArea.asMap().forEach((index, value) {
      list.add(DropdownMenuItem(
        value: index,
        child: Text(value),
      ));
    });
    return list;
  }

  Container _makeDropDownTime(int size) => Container(
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
                        Text(
                          "年",
                          style: TextStyle(color: AppColors.white),
                        ),
                        widthSpace(35),
                        Text(
                          "月",
                          style: TextStyle(color: AppColors.white),
                        ),
                        widthSpace(30),
                        Text(
                          "日",
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: widthScreen(percent: size - 5),
                      child: DateTimePicker(
                        type: DateTimePickerType.date,
                        dateMask: 'yyyy   MMM     d',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        style: TextStyle(
                          color: AppColors.white,
                        ),
                        icon: Icon(
                          Icons.event,
                          size: 20,
                          color: AppColors.white,
                        ),
                        selectableDayPredicate: (date) {
                          if (date.weekday == 6 || date.weekday == 7) {
                            return false;
                          }

                          return true;
                        },
                        onChanged: print,
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: print,
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

  Widget _footer(BuildContext context) => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment(-0.04, 0),
                stops: [
                  0.1,
                  1.9,
                ],
                colors: AppColors.backGroundApp)),
        alignment: Alignment.center,
        width: widthScreen(percent: 100),
        height: heightScreen(percent: 9),
        child: Container(
          height: heightScreen(percent: 6),
          width: widthScreen(percent: 80),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.greenButtonColor)),
              onPressed: () {},
              child: Text(Localy.of(context)!.textSubmitButton)),
        ),
      );
}
