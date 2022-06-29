import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/tab_view/tab_view.dart';
import 'package:diamon_rose_app/presentation/screen/home/value/text_button.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class NewFeedView extends StatelessWidget {
  const NewFeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainController = Get.find<HomeViewModel>();
    return Container(
        color: AppColors.transparent,
        child: SafeArea(
            child: Stack(
          children: [
            PageView(
              controller: mainController.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                PageViewTab(homeViewModel: mainController),
                PageViewTab(homeViewModel: mainController),
              ],
            ),
            Obx(() => mainController.isRegisterVideo.isTrue && Get.find<VideoCardViewModel>().isFullScreen.isFalse ?  Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextButtonTabBar(
                        title: Localy.of(context)!.forYouLabel,
                        isActive:
                            mainController.isFollowing.value == false || false,
                        onPressed: () => mainController.changeTab(
                            page: 0, isTabFollow: false)),
                    Container(
                      color: Colors.white70,
                      height: 10,
                      width: 1,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    TextButtonTabBar(
                        title: Localy.of(context)!.followingLabel,
                        isActive:
                            mainController.isFollowing.value == true || false,
                        onPressed: () => mainController.changeTab(
                            page: 1, isTabFollow: true)),
                    SizedBox(
                      width: 7,
                    ),
                  ]),
            ) : Container(),)
          ],
        )));
  }
}
