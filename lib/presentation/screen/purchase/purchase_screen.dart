import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/video_setting_item_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/purchase_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/value/purchase_list_button.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/bottom_sheet_material.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseScreen extends GetView<PurchaseViewModel> {
  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => WillPopScope(
          onWillPop: () async {
            Get.until((route) => Get.currentRoute == ROUTER_MAIN);
            return true;
          },
          child: _buildBody(context),
        ));
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.black,
        child: Stack(
          children: [
            Center(
                child: Container(
              height: heightScreen(),
              width: widthScreen(),
              child: CachedNetworkImage(
                  imageUrl: controller
                      .videoDetailEntity!.videoItemDetail!.videoThumbnail,
                  fit: BoxFit.fill),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: heightScreen(percent: 5),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: controller.purchaseNavigator.goToProfile.call,
                          child: CircleAvatarCustom(
                              avatar: controller.videoDetailEntity!.avatarUrl),
                        ),
                        SizedBox(
                          width: widthScreen(percent: 2),
                        ),
                        GestureDetector(
                          onTap: controller.purchaseNavigator.goToProfile.call,
                          child: Text(
                            StringUtils.displayNameFormat(
                                controller.videoDetailEntity!.displayName,
                                maxLength: 18),
                            style: AppStyles.typeTextNormal(
                                color: AppColors.white),
                          ),
                        ),
                        Spacer(),
                        _buildCartIconWithBadge(context)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: heightScreen(percent: 1),
                  ),
                  Container(
                      height: heightScreen(percent: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.videoDetailEntity!.videoItemDetail!
                                  .videoCaption,
                              style: AppStyles.typeBold22(
                                  color: AppColors.white, size: 15),
                            ),
                            Expanded(
                                child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: widthScreen(percent: 50)),
                              child: Text(
                                controller.videoDetailEntity!.videoItemDetail!
                                    .videoDesc,
                                style: AppStyles.typeTextNormal(
                                    color: AppColors.white, size: 13),
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                textScaleFactor: 1.1,
                                maxLines: 2,
                              ),
                            )),
                            _priceSection(context)
                          ])),
                  SizedBox(
                    height: heightScreen(percent: 1),
                  ),
                  Container(
                      height: heightScreen(percent: 49),
                      child: PurchaseListButton())
                ],
              ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomSheetMaterial(
                      materialModels: controller.materialList,
                    )))
          ],
        ),
      ),
    );
  }

  Widget _buildCartIconWithBadge(BuildContext context) {
    final count = controller.cartItemsCount;
    return count == 0
        ? _buildCartIcon(context)
        : Badge(badgeContent: Text('$count'), child: _buildCartIcon(context));
  }

  Widget _buildCartIcon(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.shopping_cart_rounded,
        color: AppColors.white,
        size: 35,
      ),
      onPressed: () => controller.openShoppingCartScreen(),
    );
  }

  Widget _priceSection(BuildContext context) {
    final VideoSettingItemEntity videoSettings =
        controller.videoDetailEntity!.videoItemDetail!.videoSettingItem!;
    return Column(children: [
      _priceInfo(
          Localy.of(context)!.originalPriceLabel, videoSettings.price, '\$'),
      _priceInfo(Localy.of(context)!.discountLabel,
          videoSettings.displayedDiscountPercent(), '%'),
      _priceInfo(Localy.of(context)!.salePriceLabel,
          videoSettings.displayedSalePrice(), '\$'),
    ]);
  }

  Widget _priceInfo(String title, double value, String unit) => Row(children: [
        Container(
            width: 100,
            child: Text('$title:',
                style: AppStyles.typeTextNormal(
                    size: 12, color: AppColors.white))),
        Text(
          '$value$unit',
          style: AppStyles.typeBold18(size: 14, color: AppColors.red),
        )
      ]);
}
