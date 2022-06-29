import 'dart:async';

import 'package:diamon_rose_app/data/repositiory/shopping_cart_repository/shopping_cart_repository.dart';
import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/shopping_cart/request_shopping_cart.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_video_detail_model.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/card_item_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/item_material_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/video_detail_entity.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/condition_purchase/condition_purchase_arguments.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/other_content/other_content_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/purchase_navigator.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseViewModel extends GetxController
    with WidgetsBindingObserver, StateMixin {
  RxString displayName = "".obs;
  RxString totalPrice = "0.0".obs;
  RxList<ItemMaterialEntity> _materialList = RxList<ItemMaterialEntity>([]);
  String privateRouter = Get.previousRoute;
  VideoDetailEntity? videoDetailEntity;
  CardItemEntity? arguments = Get.arguments;
  RxInt videoId = 0.obs;
  HomeViewModel homeViewModel = Get.put(HomeViewModel());
  PurchaseNavigator purchaseNavigator = Get.put(PurchaseNavigator());

  RxInt _cartItemsCount = 0.obs;

  RxInt get cartItemsCount => _cartItemsCount;

  List<ItemMaterialEntity> get materialList => _materialList;

  bool get hasData => videoDetailEntity != null || false;

  @override
  Future<void> onInit() async {
    if (arguments != null) {
      videoId.value = arguments!.videoId;
      totalPrice.value = arguments!.totalPrice;
      await getVideoDetail().then((value) {});
      unawaited(countCartItems());
    }
    super.onInit();
  }

  CardItemEntity resetArgument(CardItemEntity cardItemEntity) {
    arguments = cardItemEntity;
    _materialList.value = [];
    update();
    return arguments!;
  }

  Future<void> getVideoDetail() async {
    await VideoRepository.instance.requestVideoDetail(
        requestVideoDetailModel: RequestVideoDetailModel(id: videoId.value),
        onStart: () {},
        onSuccess: (response) async {
          videoDetailEntity = response.item;
          change(videoDetailEntity, status: RxStatus.success());
          _materialList.addAll(videoDetailEntity!.videoItemDetail!.listItem!);
          update();
          return;
        },
        onError: (message) async {
          await Get.defaultDialog(
              title: message[0],
              onCancel: Get.back,
              content: Padding(padding: EdgeInsets.all(5)));
          goBack();
          return;
        });
  }

  void addToCartEvent() {
    ShoppingCartRepository.instance.requestAddShoppingCart(
        requestShoppingCartModel: RequestShoppingCart(videoId: videoId.value),
        onStart: () {},
        onSuccess: (response) async {
          unawaited(showSnackBar(
              message: response.single, snackBarType: SnackBarType.success));

          unawaited(openOtherContent());
        },
        onError: (message) {
          showSnackBar(
              message: message.first, snackBarType: SnackBarType.success);
          return;
        });
  }

  Future<void> buyNow() async {
    await Future.microtask(() async {
      await ShoppingCartRepository.instance.requestAddShoppingCart(
          requestShoppingCartModel: RequestShoppingCart(videoId: videoId.value),
          onStart: () {
            showLoading();
          },
          onSuccess: (response) async {
            await Future.delayed(Duration(milliseconds: 1000));
            await ShoppingCartRepository.instance.getShoppingCarts(
                onStart: () {},
                onSuccess: (response) {
                  dismissLoading();

                  final List<int> selectedItemsIds = [];

                  for (int i = 0; i < response.item.totalElement; i++) {
                    if (ValidateUtils.isNotEmpty(response.item.listItem)) {
                      selectedItemsIds
                          .add(response.item.listItem![i].cartItem!.id);
                    }
                  }

                  final conditionPurchaseArguments = ConditionPurchaseArguments(
                      selectedItemsIds: selectedItemsIds, isBuyNow: true);

                  goTo(
                      screen: ROUTER_CONDITION_PURCHASE,
                      argument: conditionPurchaseArguments);
                },
                onError: (error) {
                  dismissLoading();
                  return;
                });
          },
          onError: (message) {
            dismissLoading();
            showSnackBar(
                message: message.first, snackBarType: SnackBarType.success);
            return;
          });
    });
  }

  Future<void> openOtherContent() async {
    Get.lazyReplace(() => OtherContentViewModel());
    final parameter = <String, String>{
      "type": SALE_VIDEO_TYPE_BY_THIS_USER.toString(),
      "userId": videoDetailEntity!.userId.toString(),
    };
    LocalStorageKeys.currentVideoOwner = parameter;
    await goTo(screen: ROUTER_OTHER_CONTENT, parameter: parameter);
    unawaited(countCartItems());
  }

  Future<void> countCartItems() async {
    ShoppingCartRepository.instance.countCartItems(
        onStart: () {},
        onSuccess: (response) {
          _cartItemsCount.value = response;

          update();
        },
        onError: (error) async {});
  }

  Future<void> openShoppingCartScreen() async {
    await goTo(screen: ROUTER_SHOPPING_CART_SCREEN);

    unawaited(countCartItems());
  }
}
