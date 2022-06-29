import 'package:diamon_rose_app/presentation/screen/follow/follower_screen.dart';
import 'package:diamon_rose_app/presentation/screen/follow/following_screen.dart';
import 'package:diamon_rose_app/presentation/screen/search/hashtag_view.dart';
import 'package:diamon_rose_app/presentation/screen/search/search_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/search/tab_top_view.dart';
import 'package:diamon_rose_app/presentation/screen/search/user_view.dart';
import 'package:diamon_rose_app/presentation/screen/search/video_list_view.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/input_debounce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchView extends GetView<SearchViewModel> {
  final SearchViewModel controller = Get.put(SearchViewModel());
  final followingView = FollowingView();
  final followerView = FollowerView();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      enableSingleScrollView: false,
      body: _bodySearch(context),
    );
  }

  Widget _bodySearch(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppColors.white,
          height: heightScreen(percent: 3),
        ),
        _buildSearchBar(context),
        _buildTabContent(context),
      ],
    );
  }

  Widget _buildTabContent(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        _buildTabBar(context),
        Container(
          height: heightScreen(percent: 71),
          child: _buildContent(),
        )
      ],
    ));
  }

  Container _buildSearchBar(BuildContext context) => Container(
      height: heightScreen(percent: 10),
      color: AppColors.white,
      child: InputDebounceWidget(
          keyboardType: TextInputType.text,
          labelTitleInput: Localy.of(context)!.labelSearch,
          onChanged: (String value) => {},
          focusedBorderColors: AppColors.purple01,
          colorIconLeft: AppColors.purple01,
          cursorColor: AppColors.purple01,
          debounce: true,
          hideIconLeft: false));

  Widget _buildContent() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.tabController,
        children: [
          TabTopView(),
          UserView(),
          VideoListView(),
          HashTagView(),
        ]);
  }

  PreferredSize _buildTabBar(BuildContext context) => PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          height: heightScreen(percent: 7),
          color: AppColors.white,
          child: TabBar(
              controller: controller.tabController,
              unselectedLabelColor: AppColors.greyDarkLittle,
              labelColor: AppColors.purple,
              indicatorColor: AppColors.purple,
              tabs: controller.myTabs),
        ),
      );
}
