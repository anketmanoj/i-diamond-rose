import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/favorite_entity/favorite_model.dart';
import 'package:diamon_rose_app/presentation/screen/favorite/favorite_screen_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/favorite/shimmer/favorite_shimmer_list.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/input_debounce.dart';
import 'package:diamon_rose_app/share/widget/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class FavoriteScreen extends GetView<UseFavoriteViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _buildAppbar(context),
      body: Obx(() {
        return _buildBody(context);
      }),
    );
  }

  AppBar _buildAppbar(BuildContext context) => AppBar(
        title: Text(Localy.of(context)!.labelFavorite,
            style:
                TextStyle(color: AppColors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
                size: 24, color: AppColors.dimGray01),
            onPressed: Get.back),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: _buildTabBar(context),
      );

  PreferredSize _buildTabBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.black12))),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (controller.isLoadingInit) {
      return FavoriteShimmerList();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: InputDebounceWidget(
                keyboardType: TextInputType.text,
                labelTitleInput: Localy.of(context)!.labelSearchVideos,
                onChanged: (String value) => {controller.onValueChange(value)},
                focusedBorderColors: AppColors.purple01,
                colorIconLeft: AppColors.purple01,
                cursorColor: AppColors.purple01,
                debounce: true,
                hideIconLeft: false)),
        Expanded(
            child: Padding(
                padding: EdgeInsets.all(16),
                child: RefreshIndicator(
                  onRefresh: () async {
                    controller.getFavoriteVideos(isRefresh: true);
                  },
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                      height: 8,
                    ),
                    controller: controller.listViewController,
                    itemCount: controller.favoriteList.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      final item = controller.favoriteList[index];
                      return _buildFavoriteItem(context, item);
                    },
                  ),
                ))),
      ],
    );
  }

  Widget _buildFavoriteItem(BuildContext context, FavoriteModel item) {
    return Card(
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 8, right: 8),
        trailing: OutlineButtonWidget(
          text: Localy.of(context)!.labelLift,
          textColor: AppColors.purple01,
          borderColor: AppColors.purple01,
          onPressed: () {
            showConfirmDialog(
              message: Localy.of(context)!.deleteConfirmTitle,
                context: context,
                action: () {
                  controller.removeItemId(
                      item.id,
                      (successMessage) => showSnackBar(
                          message: successMessage,
                          snackBarType: SnackBarType.success),
                      (errorMessage) => showSnackBar(
                          message: errorMessage,
                          snackBarType: SnackBarType.danger));
                });
          },
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 80,
              child: CachedNetworkImage(
                imageUrl: item.thumbnailUrl!,
                fit: BoxFit.fill,
                placeholder: (context, url) {
                  return Image.network(
                    url,
                    // scale: ,
                    fit: BoxFit.fill,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(item.videoCaption!,
                      style: TextStyle(color: AppColors.black),
                      textAlign: TextAlign.start),
                  SizedBox(height: 8),
                  Text(item.videoDesc ?? "",
                      style: TextStyle(color: AppColors.dimGray01),
                      textAlign: TextAlign.start),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
