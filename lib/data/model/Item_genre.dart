import 'package:get/get.dart';

class ItemGenre {
  ItemGenre({required this.isSelected, required this.title});
  String title= "";
  RxBool isSelected = true.obs;
}