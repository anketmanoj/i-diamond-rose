import 'package:diamon_rose_app/data/repositiory/shopping_cart_repository/shopping_cart_repository.dart';
import 'package:diamon_rose_app/presentation/screen/condition_purchase/condition_purchase_arguments.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/payment_widget.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConditionPurchaseViewModel extends GetxController {
  final ConditionPurchaseArguments conditionPurchaseArguments =
      Get.arguments as ConditionPurchaseArguments;

  void showPayment(BuildContext context) {
    List<int> itemIds = [];
    final bool isBuyNow = conditionPurchaseArguments.isBuyNow;
    if (isBuyNow) {
      itemIds = [conditionPurchaseArguments.selectedItemsIds.first];
    } else {
      itemIds = conditionPurchaseArguments.selectedItemsIds;
    }
    showPayment2(context, itemIds);
  }

  Future<void> backPressAction() async {
    final bool isBuyNow = conditionPurchaseArguments.isBuyNow;
    final List<int> itemIds = conditionPurchaseArguments.selectedItemsIds;
    if (itemIds.length == 1) {
      final int id = itemIds.first;
      print(itemIds);
      if (isBuyNow) {
        ShoppingCartRepository.instance.deleteShoppingCartId(
            id: id,
            onStart: () {},
            onSuccess: (response) {},
            onError: (error) async {});
      }
    }

    goBack();
  }
}
