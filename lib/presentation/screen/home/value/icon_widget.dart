import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:diamon_rose_app/share/utils/follow_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class getIconWidget {
  static const double ProfileImageSize = 40;

  static const double ActionWidgetSize = 60;

  static const double PlusIconSize = 15;

  static Widget getSocialAction(
      {String? title,
      String? iconUrl,
      Icon? icon,
      bool isShare = false,
      void Function()? onTap}) {
    return GestureDetector(
        onTap: onTap ??
            () {
              print(title);
            },
        child: Container(
          margin: EdgeInsets.only(top: 15),
          width: 60,
          height: 60,
          child: Column(children: [
            icon == null
                ? Image.asset(
                    iconUrl ?? "",
                    height: isShare ? 25 : 30,
                  )
                : icon,
            Padding(
              padding: EdgeInsets.only(top: isShare ? 8 : 8),
              child: Text(title ?? "",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: isShare ? 14 : 14)),
            )
          ]),
        ));
  }

  Widget getAvatar(
      {String? pictureUrl,
      String? key,
      bool? isFollowing,
      VideoDescriptionViewModel? videoDescriptionViewModel}) {
    return GetBuilder<VideoDescriptionViewModel>(
        init: videoDescriptionViewModel,
        builder: (controller) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 50,
              height: 50,
              child: Stack(children: [
                getProfilePicture(pictureUrl, key),
                !Get.find<FollowManager>().isFollow!.value &&
                        !videoDescriptionViewModel!.videoEntity.isVideoOwner
                    ? getPlusIcon()
                    : Container()
              ]));
        });
  }

  static Widget getPlusIcon() {
    return GetBuilder<FollowManager>(builder: (state) {
      return Positioned(
        bottom: 5,
        left: (ActionWidgetSize / 3) - (PlusIconSize / 2),
        child: GestureDetector(
            onTap: () => Get.find<VideoDescriptionViewModel>()
                .eventChangeFollow(
                    item: Get.find<VideoDescriptionViewModel>().videoEntity),
            child: Container(
              width: PlusIconSize, // PlusIconSize = 20 ;
              height: PlusIconSize, // PlusIconSize = 20 ;
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 43, 84),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            )),
      );
    });
  }

  static Widget getProfilePicture(String? url, String? key) {
    return Positioned(
        child: Container(
            padding: EdgeInsets.all(1),
            height: ProfileImageSize,
            width: ProfileImageSize,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10000),
                child: url != null
                    ? CachedNetworkImage(
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.low,
                        //cacheKey: key,
                        imageUrl: url,
                        placeholder: (context, url) =>
                            new CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                      )
                    : Container())));
  }
}
