import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_profile_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardItemTabItem extends StatelessWidget {
  const CardItemTabItem(
      {Key? key,
      required this.index,
      required this.thumbnailUrl,
      required this.videoId})
      : super(key: key);
  final String thumbnailUrl;
  final int index;
  final int videoId;

  @override
  Widget build(BuildContext context) {
    final profileViewModel = Get.find<ProfileViewModel>();
    return GestureDetector(
      onTap: () {
        profileViewModel.goToVideoDetail(videoId);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.purple, width: 2),
            color: AppColors.grey),
        child: GestureDetector(
            child: Stack(
          children: [
            SizedBox(
                height: heightScreen(),
                width: widthScreen(),
                child: CachedNetworkImage(
                  imageUrl: thumbnailUrl,
                  cacheKey: "$THUMBNAIL_IMAGE_KEY/$videoId",
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
                )),
            Center(
                child: Icon(Icons.play_arrow, size: 40, color: Colors.black45)),
            profileViewModel.isLocalUser
                ? Positioned(
                    right: -5,
                    top: -5,
                    child: _buildPopupMenu(
                        context,
                        profileViewModel
                            .tabBarProfileViewModel!.listVideo.value,
                        index),
                  )
                : Container()
          ],
        )),
      ),
    );
  }
}

PopupMenuItem _buildPopupItem(int value, String label) => PopupMenuItem(
    value: value,
    child: textCustom(
        content: label,
        style: AppStyles.typeTextNormal(color: AppColors.black),
        align: TextAlign.center));

PopupMenuButton _buildPopupMenu(
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
