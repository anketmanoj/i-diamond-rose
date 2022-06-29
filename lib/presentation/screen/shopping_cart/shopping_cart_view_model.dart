import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/shopping_cart_repository/shopping_cart_repository.dart';
import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/shopping_cart_model.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/condition_purchase/condition_purchase_arguments.dart';
import 'package:diamon_rose_app/presentation/screen/other_content/other_content_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCartViewModel extends GetxController with WidgetsBindingObserver {
  Rx<LoadingState> _loading = Rx<LoadingState>(LoadingState.loading);

  bool get isLoading => _loading.value == LoadingState.loading;

  RxList<ShoppingCartModel> _shoppingCartList = RxList<ShoppingCartModel>([]);

  List<ShoppingCartModel> get shoppingCartList => _shoppingCartList;

  RxList<bool> _listCheck = RxList<bool>([]);

  List<bool> get listCheck => _listCheck;
  RxInt _counterCheck = 0.obs;

  int get counterCheck => _counterCheck.value;
  RxDouble _totalSelectedPrice = 0.0.obs;

  double get totalSelectedPrice => _totalSelectedPrice.value;
  RxBool _checkAll = false.obs;

  bool get isCheckAll => _checkAll.value;
  final _otherContentViewModel = Get.put(OtherContentViewModel());

  void onCheckAll() {
    _checkAll.value = !_checkAll.value;

    double totalPrice = 0;
    for (int i = 0; i < _listCheck.length; i++) {
      if (_checkAll.value) {
        _listCheck[i] = true;
        totalPrice += _shoppingCartList[i].cartItem!.salePrice;
      } else {
        _listCheck[i] = false;
      }
    }
    _totalSelectedPrice.value = totalPrice;

    if (_checkAll.value) {
      _counterCheck.value = _listCheck.length;
    } else {
      _counterCheck.value = 0;
    }
    update();
  }

  void onCheck(int index) {
    _listCheck[index] = !_listCheck[index];
    if (_listCheck[index]) {
      _counterCheck.value++;
      if (_counterCheck.value == _listCheck.length) {
        _checkAll.value = true;
      }

      _totalSelectedPrice.value += _shoppingCartList[index].cartItem!.salePrice;
    } else {
      _counterCheck.value--;
      _totalSelectedPrice.value -= _shoppingCartList[index].cartItem!.salePrice;
      _checkAll.value = false;
    }
    update();
  }

  @override
  Future<void> onInit() async {
    await _fetchItems();

    super.onInit();
  }

  Future<void> _fetchItems({bool isRefresh = true}) async {
    await ShoppingCartRepository.instance.getShoppingCarts(onStart: () {
      _loading.value = LoadingState.loading;
    }, onSuccess: (response) {
      _loading.value = LoadingState.none;

      for (int i = 0; i < response.item.totalElement; i++) {
        _shoppingCartList.add(response.item.listItem![i]);
        _listCheck.add(false);
      }

      update();
    }, onError: (error) async {
      _loading.value = LoadingState.none;
    });
    update();
  }

  void removeItemAtIndex(int index, Function(String successMessage) onSuccess,
      Function(String errorMessage) onError) {
    final int id = _shoppingCartList[index].cartItem!.id;
    ShoppingCartRepository.instance.deleteShoppingCartId(
        id: id,
        onStart: () {
          _loading.value = LoadingState.loading;
          update();
        },
        onSuccess: (response) {
          _loading.value = LoadingState.none;

          if (_listCheck[index] == true) {
            _counterCheck.value--;
            _totalSelectedPrice.value -=
                _shoppingCartList[index].cartItem!.salePrice;
          }
          _listCheck.removeAt(index);

          _shoppingCartList.removeAt(index);

          onSuccess(response[0]);
        },
        onError: (error) async {
          _loading.value = LoadingState.none;

          onError(error.first.toString());
        });

    update();
  }

  void moveToShoppingCartCondition() {
    final List<int> selectedItemsIds = getSelectedItemsIds();
    final arguments = ConditionPurchaseArguments(
        selectedItemsIds: selectedItemsIds, isBuyNow: false);

    goTo(screen: ROUTER_CONDITION_PURCHASE, argument: arguments);
  }

  List<int> getSelectedItemsIds() {
    final List<int> selectedItemsIds = [];
    for (int i = 0; i < _listCheck.length; i++) {
      if (_listCheck[i]) {
        selectedItemsIds.add(_shoppingCartList[i].cartItem!.id);
      }
    }

    return selectedItemsIds;
  }

  void openOtherContent() {
    final parameter = <String, String>{
      "type": SALE_VIDEO_TYPE_BY_ALL.toString(),
      "userId": '0',
    };
    _otherContentViewModel
      ..resetParam(parameter)
      ..onInit();
    goTo(screen: ROUTER_OTHER_CONTENT, parameter: parameter);
  }

  void onBack() {
    if (!(Get.previousRoute == ROUTER_PURCHASE_SCREEN)) {
      final Map<String, String?> param = LocalStorageKeys.currentVideoOwner;
      _otherContentViewModel
        ..resetParam(param)
        ..onInit();
    }
    goBack();
  }
}
