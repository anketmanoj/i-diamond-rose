import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/video_item_detail_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/video_setting_item_entity.dart';
import 'package:diamon_rose_app/presentation/screen/other_content/other_content_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/bottom_sheet_material.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherContentScreen extends GetView<OtherContentViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBarApp(
          isGradientBackground: true,
          backgroundColor: AppColors.white,
          title: Localy.of(context)!.titleOtherContent,
          titleColor: AppColors.black,
          iconLeft:
              Icon(Icons.arrow_back_ios, size: 24, color: AppColors.black),
          actIconLeft: goBack,
          itemsRight: TextButton(
              onPressed: controller.navigateToShoppingCart,
              child: Text(
                Localy.of(context)!.btnShoppingCart,
                style: AppStyles.typeText18(color: AppColors.black),
              ))),
      body: Obx(
          () => controller.isLoading.value ? Container() : _bodyBody(context)),
    );
  }

  Widget _bodyBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
      child: controller.listData.length == 0
          ? Align(
              alignment: Alignment.topCenter,
              child: Text(
                Localy.of(context)!.txtEmptyContent,
                style: AppStyles.typeText18(),
              ),
            )
          : Container(
              width: widthScreen(percent: 100),
              child: ListView.separated(
                itemCount: controller.listData.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildItemCard(context, index: index);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: heightScreen(percent: 2));
                },
              ),
            ),
    );
  }

  Widget _buildItemCard(BuildContext context,
      {String? thumbnail, required int index}) {
    final VideoItemDetailEntity videoItemDetail =
        controller.listData[index].videoItemDetail!;
    final VideoSettingItemEntity videoSettingItem =
        videoItemDetail.videoSettingItem!;
    return Container(
      height: 181,
      width: double.infinity,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 180,
                  width: widthScreen(percent: 32),
                  child: CachedNetworkImage(
                    imageUrl: controller
                        .listData[index].videoItemDetail!.videoThumbnail,
                    placeholder: (context, url) => new Center(
                        child: Container(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator())),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            videoItemDetail.videoCaption,
                            overflow: TextOverflow.ellipsis,
                            style: AppStyles.typeBold18(
                                size: 16, color: AppColors.blueDark),
                          )),
                        ],
                      ),
                      Expanded(
                          child: Text(
                        videoItemDetail.videoDesc,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.typeTextNormal(
                            size: 12, color: AppColors.black),
                      )),
                      Column(
                        children: [
                          _priceInfo(Localy.of(context)!.originalPriceLabel,
                              videoSettingItem.price, '\$'),
                          _priceInfo(Localy.of(context)!.discountLabel,
                              videoSettingItem.displayedDiscountPercent(), '%'),
                          _priceInfo(Localy.of(context)!.salePriceLabel,
                              videoSettingItem.displayedSalePrice(), '\$')
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ButtonAction(
                            content: Localy.of(context)!.labelMaterial,
                            action: () {
                              showMaterials(context, index);
                            },
                            color: AppColors.blueDark,
                            radius: 5,
                            verticalPadding: 6,
                            horizontalPadding: widthScreen(percent: 5),
                            isNoPadding: true,
                            textStyle: AppStyles.typeText18(
                                size: 12, color: AppColors.white),
                          ),
                          Spacer(),
                          ButtonAction(
                            content: Localy.of(context)!.toPurchaseLabel,
                            action: () {
                              // TODO(param): let add to param request.
                              controller.navigateToPurchase(index);
                            },
                            color: AppColors.blue,
                            radius: 5,
                            verticalPadding: 4,
                            horizontalPadding: widthScreen(percent: 5),
                            isNoPadding: true,
                            textStyle: AppStyles.typeText18(
                                size: 12, color: AppColors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showMaterials(BuildContext context, int index) {
    final cartItem = controller.listData[index];
    final video = cartItem.videoItemDetail!;
    final materials = video.listItem;

    showBottomSheetDefault(
        barrierColor: Color.fromRGBO(0, 0, 0, 0.2),
        backgroundColor: AppColors.transparent.withOpacity(0),
        paddingTop: 0,
        paddingBottom: 0,
        context: context,
        widget: BottomSheetMaterial(
          materialModels: materials,
        ));
  }

  Widget _priceInfo(String title, double value, String unit) => Row(children: [
        Container(
            width: 100,
            child: Text(
              '$title:',
              style: AppStyles.typeTextNormal(size: 12),
            )),
        Text(
          '$value$unit',
          style: AppStyles.typeBold18(size: 14, color: AppColors.red),
        )
      ]);
}
