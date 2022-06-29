import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/icon_widget.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription(
      {this.videoEntity, this.videoCardViewModel, this.isLocalUser});

  final VideoCardViewModel? videoCardViewModel;
  final VideoEntity? videoEntity;
  final bool? isLocalUser;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height: heightScreen(percent: 20),
            padding: EdgeInsets.only(left: 20),
            child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () async {
                      Get.put(() => ProfileViewModel());
                      final String localUid =
                          Get.find<HomeViewModel>().localUid.value;
                      final uid = videoEntity!.uid;
                      final userId = videoEntity!.userId;
                      videoCardViewModel!.checkPlay();
                      if (uid == localUid) {
                        await Get.find<HomeViewModel>().setCurrentScreen(4);
                      } else {
                        Get.put(ProfileViewModel(), tag: "$PROFILE_TAG/$uid");
                        await goTo(
                          screen: ROUTER_PROFILE,
                          argument: ["${uid}", "${userId}", "${videoEntity}"],
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        getIconWidget().getAvatar(
                            pictureUrl: videoEntity!.urlImage,
                            key: videoEntity!.userName,
                            isFollowing: Get.find<VideoDescriptionViewModel>()
                                .isFollowingUser,
                            videoDescriptionViewModel:
                                Get.find<VideoDescriptionViewModel>()),
                        Text(
                          StringUtils.displayNameFormat(
                              videoEntity!.displayName ?? "",
                              maxLength: 18),
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: widthScreen(percent: 50)),
                    child: Text(videoEntity!.videoDTO!.videoCaption ?? "",
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.typeBold18(color: AppColors.white)),
                  ),
                  SizedBox(
                    height: heightScreen(percent: 0.6),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: widthScreen() / 1.5, minHeight: 40),
                    child: Text(videoEntity!.videoDTO!.videoDesc ?? "",
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.typeText18(
                            size: 14, color: AppColors.white)),
                  ),
                  Row(children: [
                    Icon(
                      Icons.music_note,
                      size: 15,
                      color: Colors.white,
                    ),
                    Text("songInfo",
                        style: TextStyle(color: Colors.white, fontSize: 14))
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                ])));
  }
}
