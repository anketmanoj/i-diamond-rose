import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Sex { male, female, others }

class RegisterViewModel extends GetxController with WidgetsBindingObserver {
  RxBool passwordStateShow = true.obs;
  RxString textValidatorPassword = "".obs;
  Rx<Sex> sexRadioGroupValue = Sex.male.obs;
  Rx<int> valueRadio = 0.obs;
  List<String> listOfArea = ["VN", "JP", "US"];
  Rx<int> itemAreaSelected = 0.obs;

  void changeValueRadio({Sex? value}) {
    sexRadioGroupValue.value = value!;
    update();
  }
}
