import 'package:diamon_rose_app/domain/entities/video_entity/video_profile_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/profile_shimmer.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_bar_profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_item/card_item/card_item.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabViewItem extends StatelessWidget {
  const TabViewItem({Key? key, required this.tabBarProfileViewModel})
      : super(key: key);
  final TabBarProfileViewModel tabBarProfileViewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
        child: tabBarProfileViewModel.obx(
            (state) => BuildVideoList(
                  tabBarProfileViewModel: tabBarProfileViewModel,
                ),
            onLoading: ShimmerItem(),
            onEmpty: Center(child: Text(Localy.of(context)!.txtEmptyVideo))));
  }
}

class BuildVideoList extends StatelessWidget {
  const BuildVideoList({Key? key, this.tabBarProfileViewModel})
      : super(key: key);

  final TabBarProfileViewModel? tabBarProfileViewModel;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabBarProfileViewModel>(
        init: tabBarProfileViewModel,
        builder: (controller) {
          return Flex(
            direction: Axis.vertical,
            children: [
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: controller.listVideo.value.length,
                  itemBuilder: (BuildContext ctx, index) {
                    if (controller
                        .listVideo.value[index]!.myVideo.thumbnailUrl!.isNotEmpty) {
                      return CardItemTabItem(
                        index: index,
                        thumbnailUrl:
                            controller.listVideo.value[index]!.myVideo.thumbnailUrl!,
                        videoId: controller.listVideo.value[index]!.myVideo.videoId,
                      );
                    } else {
                      return ShimmerItem();
                    }
                  })
            ],
          );
        });
  }

  PopupMenuItem _buildPopupItem(int value, String label) => PopupMenuItem(
      value: value,
      child: textCustom(
          content: label,
          style: AppStyles.typeTextNormal(color: AppColors.black),
          align: TextAlign.center));

  PopupMenuButton buildPopupMenu(
          BuildContext context, List<VideoProfileEntity?> videos, int index) =>
      PopupMenuButton(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        itemBuilder: (context) => [
          _buildPopupItem(0, Localy.of(context)!.labelGotoSetting),
          _buildPopupItem(1, Localy.of(context)!.labelEdit)
        ],
        onSelected: (x) {
          switch (x) {
            case 0:
              Get.toNamed(ROUTER_VIDEO_SETTINGS,
                  arguments: videos[index]!.myVideo.videoId);
              break;
            case 1:
              Get.find<ProfileViewModel>()
                  .onNavigateEditVideo(videos[index]!.videoItem);
              break;

            default:
              break;
          }
        },
      );
}
