import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/follow/follow_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/follow/follower_screen.dart';
import 'package:diamon_rose_app/presentation/screen/follow/following_screen.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowView extends GetView<FollowViewModel> {
  final followingView = FollowingView();
  final followerView = FollowerView();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await goToAndRemoveAll(screen: ROUTER_MAIN);
        await dismissLoading();
        return true;
      },
      child: CustomScaffold(
        appBar: appBarApp(
          isGradientBackground: false,
          title: Localy.of(context)!.followManagementText,
          titleColor: AppColors.black,
          heightAppBar: 100,
          iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.black),
          actIconLeft: () {
            goToAndRemoveAll(screen: ROUTER_MAIN);
          },
          bottomAppBar: _buildTabBar(context),
        ),
        enableSingleScrollView: true,
        body: _bodyFollow(),
      ),
    );
  }

  Widget _bodyFollow() {
    return Container(
      height: heightScreen() - 100,
      width: widthScreen(),
      child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.tabController,
          children: [
            _followingView(),
            _followerView(),
          ]),
    );
  }

  PreferredSize _buildTabBar(BuildContext context) => PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: AppColors.white,
          child: TabBar(
              controller: controller.tabController,
              unselectedLabelColor: AppColors.greyDarkLittle,
              labelColor: AppColors.purple,
              indicatorColor: AppColors.purple,
              tabs: [
                Tab(text: Localy.of(context)!.followingLabel),
                Tab(text: Localy.of(context)!.followerText),
              ]),
        ),
      );

  Widget _followingView() {
    return followingView;
  }

  Widget _followerView() {
    return followerView;
  }
}
