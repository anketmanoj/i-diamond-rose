import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/shopping_cart_entity/shopping_cart_model.dart';
import 'package:diamon_rose_app/presentation/screen/shopping_cart/shopping_cart_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/shopping_cart/value/shopping_cart_shimmer.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/bottom_sheet_material.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class ShoppingCartScreen extends GetView<ShoppingCartViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Obx(() => _buildBody(context)),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        Localy.of(context)!.titleShoppingCart,
        style: AppStyles.typeText18(),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.greyDark,
        ),
        onPressed: controller.onBack,
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            _buildHeader(context),
            SizedBox(
              height: heightScreen(percent: 1),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 100),
              child: _buildList(context),
            )),
          ],
        ),
        _buildOtherContentButton(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.grey, width: 2),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                          style: AppStyles.typeTextNormal(size: 17),
                          text: Localy.of(context)!.labelSelectedCounter,
                          children: <TextSpan>[
                            TextSpan(
                                text: controller.counterCheck.toString(),
                                style: AppStyles.typeTextNormal(
                                    size: 17, fontWeight: FontWeight.bold))
                          ]),
                    ),
                    SizedBox(
                      width: widthScreen(percent: 5),
                    ),
                    Checkbox(
                      onChanged: (value) {
                        controller.onCheckAll();
                      },
                      value: controller.isCheckAll,
                    ),
                    Text(
                      Localy.of(context)!.labelSelectedAll,
                      style: AppStyles.typeTextNormal(size: 17),
                    )
                  ],
                ),
                Text(
                  '${controller.totalSelectedPrice}\$',
                  style: AppStyles.typeBold18(color: AppColors.red),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
            Spacer(),
            ButtonAction(
              action: () => controller.moveToShoppingCartCondition(),
              content: Localy.of(context)!.labelConfirm,
              textStyle:
                  AppStyles.typeTextNormal(size: 12, color: AppColors.white),
              horizontalPadding: widthScreen(percent: 4),
              verticalPadding: 8,
              color: AppColors.black,
              radius: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    if (controller.isLoading) {
      return ShoppingCartShimmerList();
    }

    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return _buildItemCard(context,
              cartItem: controller.shoppingCartList[index], index: index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: heightScreen(percent: 2));
        },
        itemCount: controller.shoppingCartList.length);
  }

  Widget _buildItemCard(BuildContext context,
      {ShoppingCartModel? cartItem, required int index}) {
    return Container(
      height: 180,
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 180,
                  width: widthScreen(percent: 32),
                  child: CachedNetworkImage(
                    imageUrl: cartItem!.video!.videoThumbnail,
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
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          cartItem.video!.videoCaption,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              AppStyles.typeText18(color: AppColors.purple01),
                        )),
                        Checkbox(
                            value: controller.listCheck[index],
                            onChanged: (_) {
                              controller.onCheck(index);
                            })
                      ],
                    ),
                    Expanded(
                      child: Text(
                        cartItem.video!.videoDesc,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            AppStyles.typeTextNormal(color: AppColors.purple01),
                      ),
                    ),
                    Row(children: [
                      _priceTitle(Localy.of(context)!.originalPriceLabel),
                      Text(
                        '${cartItem.cartItem!.totalPrice}\$',
                        style: AppStyles.typeBold18(size: 14),
                      )
                    ]),
                    _discount(context, cartItem.cartItem!.discount,
                        cartItem.cartItem!.discountPercent),
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
                        Text(
                          '${cartItem.cartItem!.salePrice}\$',
                          style: AppStyles.typeBold18(color: AppColors.red),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              showConfirmDialog(
                                  context: context,
                                  action: () {
                                    controller.removeItemAtIndex(index,
                                        (successMessage) {
                                      showSnackBar(
                                          message: successMessage,
                                          snackBarType: SnackBarType.success);
                                    }, (error) {
                                      showSnackBar(
                                          message: error,
                                          snackBarType: SnackBarType.danger);
                                    });
                                  },
                                  message:
                                      '${Localy.of(context)!.messageDeleteCartConfirmation}',
                                  positiveLabel:
                                      Localy.of(context)!.labelOkButton);
                            },
                            icon: Icon(
                              Icons.delete,
                              size: 40,
                              color: AppColors.red,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildOtherContentButton(BuildContext context) => Positioned(
        bottom: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(17),
          child: ButtonAction(
            content: Localy.of(context)!.labelOtherContent,
            action: controller.openOtherContent.call,
            textStyle: AppStyles.typeTextNormal(color: AppColors.white),
            color: AppColors.black,
          ),
        ),
      );

  void showMaterials(BuildContext context, int index) {
    final cartItem = controller.shoppingCartList[index];
    final video = cartItem.video!;
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

  Widget _priceTitle(String title) => Text(
        '$title:',
        style: AppStyles.typeTextNormal(size: 12),
      );

  Widget _discount(
          BuildContext context, bool discount, double discountPercent) =>
      discount == true
          ? Row(children: [
              _priceTitle(Localy.of(context)!.discountLabel),
              Text(
                '${discountPercent}\%',
                style: AppStyles.typeBold18(size: 14, color: AppColors.red),
              )
            ])
          : Container();
}
