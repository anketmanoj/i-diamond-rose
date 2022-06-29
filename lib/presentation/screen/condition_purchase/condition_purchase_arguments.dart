class ConditionPurchaseArguments {
  ConditionPurchaseArguments({
    required this.selectedItemsIds,
    required this.isBuyNow,
  });

  late List<int> selectedItemsIds;
  late bool isBuyNow;
}
