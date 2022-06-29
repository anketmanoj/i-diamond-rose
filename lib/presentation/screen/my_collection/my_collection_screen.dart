import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/card_item_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection/my_collection_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection/value/card_view.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCollectionScreen extends GetView<MyCollectionViewModel> {
  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => WillPopScope(
          onWillPop: () async {
            await goToAndRemoveAll(
                screen: ROUTER_MAIN, parameter: {"index": "4"});
            return true;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(Localy.of(context)!.myCollectionTitle,
                  style: TextStyle(color: AppColors.black)),
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
                  onPressed: () => goToAndRemoveAll(
                      screen: ROUTER_MAIN, parameter: {"index": "4"})),
            ),
            body: _bodyMyMaterials(
              context,
            ),
          ),
        ));
  }

  Widget _bodyMyMaterials(BuildContext context) {
    return ListView.builder(
      controller: controller.scrollController,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: GestureDetector(
            child: CustomCardView(
              arEntity: controller.collections[index],
            ),
            onTap: () {
              // TODO(myCollectionDetail): go to myCollectionDetail.
              final CardItemEntity cardItemEntity = CardItemEntity(
                  videoId: controller.collections[index]!.video!.id,
                  totalPrice: controller.collections[index]!.videoSetting!.price
                      .toString());
              goTo(screen: ROUTER_PURCHASE_SCREEN, argument: cardItemEntity);
            },
          ),
        );
      },
      itemCount: controller.collections.length,
    );
  }
}
