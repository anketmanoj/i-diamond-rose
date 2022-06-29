import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/comment/comment_widget.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/icon_widget.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/share_popup.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/action_toolbar/actions_toolbar_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class ActionsToolbar extends StatelessWidget {
  ActionsToolbar({this.videoEntity});

  final VideoEntity? videoEntity;

  static const double ActionWidgetSize = 100;

  static const double ActionIconSize = 35;

  static const double ShareActionIconSize = 25;

  static const double ProfileImageSize = 50;

  static const double PlusIconSize = 20;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          width: 100,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            getIconWidget.getSocialAction(
                iconUrl: Get.find<ActionsToolbarViewModel>().likeIcon.value,
                onTap: Get.find<ActionsToolbarViewModel>().likeEvent,
                title: Get.find<ActionsToolbarViewModel>()
                    .totalLike
                    .value
                    .toString()),
            getIconWidget.getSocialAction(
                iconUrl: Get.find<ActionsToolbarViewModel>().favoriteIcon.value,
                onTap: Get.find<ActionsToolbarViewModel>().favoriteEvent,
                title: Get.find<ActionsToolbarViewModel>()
                    .totalFavotite
                    .value
                    .toString()),
            getIconWidget.getSocialAction(
                iconUrl: "${PNG_URL}comment.png",
                title: Get.find<ActionsToolbarViewModel>()
                    .totalComment
                    .value
                    .toString(),
                onTap: () => showComment(context)),
            Get.find<ActionsToolbarViewModel>().permitToBuy.isTrue
                ? getIconWidget.getSocialAction(
                    iconUrl: "${PNG_URL}shopping.png",
                    title: Localy.of(context)!.shopLabelButton,
                    onTap: () => goTo(screen: ROUTER_SHOPPING_CART_SCREEN))
                : Container(),
            getIconWidget.getSocialAction(
                iconUrl: "${PNG_URL}share.png",
                title: Localy.of(context)!.shareLabelButton,
                isShare: true,
                onTap: () => showSharePopup(context)),
          ]),
        ));
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800]!,
        Colors.grey[900]!,
        Colors.grey[900]!,
        Colors.grey[800]!
      ], stops: [
        0,
        0.4,
        0.6,
        1
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget getMusicPlayerAction(String? userPic) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Column(children: [
          Container(
              padding: EdgeInsets.all(11),
              height: ProfileImageSize,
              width: ProfileImageSize,
              decoration: BoxDecoration(
                  gradient: musicGradient,
                  borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10000),
                  child: CachedNetworkImage(
                    imageUrl: userPic!,
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ))),
        ]));
  }
}
