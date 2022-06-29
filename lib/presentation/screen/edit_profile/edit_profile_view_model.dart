import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum Sex { male, female, others }

class EditProfileViewModel extends GetxController with WidgetsBindingObserver {
  Rx<Sex> sexRadioGroupValue = Sex.male.obs;
  RxInt valueRadio = 0.obs;
  List<String> listOfArea = ["VN", "JP", "US"];
  RxInt itemAreaSelected = 0.obs;

  void changeValueRadio(Sex value) {
    sexRadioGroupValue.value = value;
    update();
  }
}
