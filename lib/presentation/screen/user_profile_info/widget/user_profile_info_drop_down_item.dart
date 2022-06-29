import 'package:diamon_rose_app/data/model/phone_number.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileInfoDropDownItem {
  UserProfileInfoViewModel editInfoViewModel =
      Get.put(UserProfileInfoViewModel());
  List<String> _listMonths = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12'
  ];

  List<DropdownMenuItem> getListAreaDropDownItem() {
    final list = <DropdownMenuItem>[];
    editInfoViewModel.listContry.asMap().forEach((index, value) {
      list.add(DropdownMenuItem(
        value: index,
        child: Text(value!.countryName!),
      ));
    });
    return list;
  }

  List<DropdownMenuItem<PhoneNum>> getListPhoneNumberDropDownItem() {
    final list = <DropdownMenuItem<PhoneNum>>[];
    AppData().listCountryPhone.asMap().forEach((index, value) {
      list.add(DropdownMenuItem(
        value: value,
        child: Text(value.countryCode),
      ));
    });
    return list;
  }

  List<DropdownMenuItem<String>> getListYearsDropDownItem() {
    final list = <DropdownMenuItem<String>>[];
    editInfoViewModel.listYears.asMap().forEach((index, value) {
      list.add(DropdownMenuItem(
        value: value,
        child: Text(value),
      ));
    });
    return list;
  }

  List<DropdownMenuItem<String>> getListMonthsDropDownItem() {
    final list = <DropdownMenuItem<String>>[];
    _listMonths.asMap().forEach((index, value) {
      list.add(DropdownMenuItem(
        value: value,
        child: Text(value),
      ));
    });
    return list;
  }

  List<DropdownMenuItem<String>> getListDaysDropDownItem() {
    final list = <DropdownMenuItem<String>>[];
    editInfoViewModel.listDates.asMap().forEach((index, value) {
      list.add(DropdownMenuItem(
        value: value,
        child: Text(value),
      ));
    });
    return list;
  }
}
