import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/item_material_entity.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/value/purchase_list_button.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/bottom_sheet_material.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PurchaseWidget extends StatelessWidget {
  PurchaseWidget(
      {Key? key,
      this.videoThumbnail,
      this.avatarUrl,
      this.onTapProfile,
      this.openShoppingCartScreen,
      this.displayName,
      this.cartItemsCount,
      this.hashTag1,
      this.hashTag2,
      this.videoDescription,
      this.totalPrice,
      this.videoCaption,
      this.materialModels})
      : super(key: key);

  final String? videoThumbnail;
  final String? avatarUrl;

  final String? displayName;
  final int? cartItemsCount;

  final String? hashTag1;
  final String? hashTag2;
  final String? videoDescription;
  final String? totalPrice;
  final String? videoCaption;

  final void Function()? onTapProfile;
  final void Function()? openShoppingCartScreen;

  List<ItemMaterialEntity>? materialModels;

  @override
  Widget build(BuildContext context) {
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
                  imageUrl: videoThumbnail!, fit: BoxFit.fill),
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
                          onTap: onTapProfile,
                          child: CircleAvatarCustom(avatar: avatarUrl),
                        ),
                        SizedBox(
                          width: widthScreen(percent: 2),
                        ),
                        GestureDetector(
                          onTap: onTapProfile,
                          child: Text(
                            displayName!,
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
                              videoCaption!,
                              style: AppStyles.typeBold22(
                                  color: AppColors.white, size: 15),
                            ),
                            Text(
                              " \$ ${totalPrice}",
                              style: AppStyles.typeBold22(
                                color: AppColors.red,
                                size: 16,
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: widthScreen(percent: 50)),
                              child: Text(
                                videoDescription!,
                                style: AppStyles.typeTextNormal(
                                    color: AppColors.white, size: 13),
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                textScaleFactor: 1.1,
                                maxLines: 2,
                              ),
                            ),
                            Spacer(),
                            Row(children: [
                              Text(
                                hashTag1!,
                                style: AppStyles.typeTextNormal(
                                    color: AppColors.white, size: 12),
                              ),
                              Text(
                                hashTag2!,
                                style: AppStyles.typeTextNormal(
                                    color: AppColors.white, size: 12),
                              ),
                            ])
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
                      materialModels: materialModels,
                    )))
          ],
        ),
      ),
    );
  }

  Widget _buildCartIconWithBadge(BuildContext context) {
    final count = cartItemsCount;
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
      onPressed: openShoppingCartScreen,
    );
  }
}
