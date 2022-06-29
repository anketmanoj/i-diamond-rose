import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/drawer_menu.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/other_infomation_widget.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/profile_shimmer.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_bar_profile.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_item/tab_item_profile.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_widget.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_introduce_widget.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileViewModel> {
  final ProfileViewModel profileViewModel = Get.put(ProfileViewModel());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          await Get.find<UserInformationViewModel>()
              .updateFollowWillPop()
              .whenComplete(() {
            if (profileViewModel.isGoToVideoDetail.isFalse) {
              Get.find<VideoDescriptionViewModel>().update();
              goBack();
            } else {
              goToAndRemoveAll(screen: ROUTER_MAIN);
            }
          });

          return true;
        },
        child: Scaffold(
            appBar: _buildAppbar(context),
            endDrawer: !profileViewModel.isLocalUser ? null : DrawerMenu(),
            body: profileViewModel.obx(
              (state) => _buildBody(context),
              onLoading: ProfileShimmer(),
            )));
  }

  AppBar _buildAppbar(BuildContext context) => AppBar(
        iconTheme: IconThemeData(color: AppColors.greyDark, size: 40),
        leading: profileViewModel.arguments != null
            ? IconButton(
                onPressed: () async {
                  await Get.find<UserInformationViewModel>()
                      .updateFollowWillPop()
                      .whenComplete(() {
                    if (profileViewModel.isGoToVideoDetail.isFalse) {
                      Get.find<VideoDescriptionViewModel>().update();
                      goBack();
                    } else {
                      goToAndRemoveAll(screen: ROUTER_MAIN);
                    }
                  });
                },
                icon: Icon(Icons.arrow_back_ios_new))
            : null,
        title: GetBuilder<UserInformationViewModel>(
            init: UserInformationViewModel(),
            builder: (profileViewModel) {
              if (profileViewModel.userContentModel != null) {
                return Text(
                  StringUtils.displayNameFormat(
                      profileViewModel.userContentModel!.displayName ?? "...",
                      maxLength: 18),
                  style: AppStyles.typeBold18(),
                );
              }
              return Text(
                "...",
                style: AppStyles.typeBold18(),
              );
            }),
        centerTitle: true,
      );

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      controller: profileViewModel.tabBarProfileViewModel!.scrollController,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UserInformation(
            profileViewModel: profileViewModel,
            userInformationViewModel:
                profileViewModel.userInformationViewModel!,
          ),
          OtherInformation(
            profileViewModel: profileViewModel,
            userInformationViewModel:
                profileViewModel.userInformationViewModel!,
          ),
          UserIntroduce(),
          TabBarProfile(
            profileViewModel: profileViewModel,
            tabBarProfileViewModel: profileViewModel.tabBarProfileViewModel!,
          ),
          TabViewItem(
              tabBarProfileViewModel: profileViewModel.tabBarProfileViewModel!),
        ],
      ),
    );
  }
}
