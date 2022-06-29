import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_other_content_model.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/card_item_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/video_detail_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/purchase_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/shopping_cart/shopping_cart_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:get/get.dart';

class OtherContentViewModel extends GetxController {
  RxBool isLoading = true.obs;
  RxList<VideoDetailEntity> listData = RxList<VideoDetailEntity>([]);
  final context = Get.context;
  Map<String, String?> parameters = Get.parameters;
  final _purchaseViewModel = Get.put(PurchaseViewModel());

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    await VideoRepository.instance.requestGetSaleVideo(
        requestParam: RequestOtherContentModel(
            type: int.parse(parameters['type']!),
            ownerId: int.parse(parameters['userId']!),
            page: PAGE,
            size: PAGE_SIZE),
        onStart: () async {
          await showLoading();
        },
        onSuccess: (data) async {
          await dismissLoading();
          isLoading.value = false;
          listData.value = data["items"]
              .map<VideoDetailEntity>(
                  (data) => VideoDetailEntity.fromJson(data))
              .toList();
        },
        onError: (error) async {
          isLoading.value = false;
          await dismissLoading();
          await showErrorConfirmDialog(context: context!, errors: error);
        });
  }

  Future<void> navigateToPurchase(int index) async {
    final CardItemEntity cardItemEntity = CardItemEntity(
        videoId: listData[index].videoItemDetail!.id,
        totalPrice: listData[index]
            .videoItemDetail!
            .videoSettingItem!
            .salePrice
            .toString());
    _purchaseViewModel.resetArgument(cardItemEntity);
    await _purchaseViewModel.onInit();

    await goTo(
        screen: ROUTER_PURCHASE_SCREEN,
        argument: cardItemEntity,
        preventDuplicates: true);
  }

  void navigateToShoppingCart() {
    Get.lazyReplace(() => ShoppingCartViewModel());
    goTo(screen: ROUTER_SHOPPING_CART_SCREEN);
  }

  Map<String, String?> resetParam(Map<String, String?> param) {
    parameters = param;
    update();
    return parameters;
  }
}
