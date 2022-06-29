import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/presentation/screen/follow/follow_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/input_debounce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowerView extends GetView<FollowViewModel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      enableSingleScrollView: true,
      body: Obx(() => _body(context)),
    );
  }

  Widget _body(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            Visibility(
                visible: controller.isSearchFollower.value,
                child: _buildTabBar(context)),
            controller.followerList.isEmpty
                ? Container(
                    width: widthScreen(percent: 100),
                    height: heightScreen(percent: 100),
                    color: AppColors.white,
                    child: Column(
                      children: [
                        heightSpace(20),
                        Text(Localy.of(context)!.labelNoFollower)
                      ],
                    ),
                  )
                : _bodyFollowing(),
          ],
        ),
      );

  Container _buildTabBar(BuildContext context) => Container(
      color: AppColors.white,
      child: InputDebounceWidget(
          keyboardType: TextInputType.text,
          labelTitleInput: Localy.of(context)!.labelSearchUser,
          onChanged: controller.onChangeSearchFieldFollowers,
          focusedBorderColors: AppColors.purple01,
          colorIconLeft: AppColors.purple01,
          cursorColor: AppColors.purple01,
          debounce: true,
          customController: controller.searchFollowerController,
          hideIconLeft: false));

  Widget _bodyFollowing() => Container(
        height: heightScreen(),
        width: widthScreen(),
        color: AppColors.white,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          itemCount: controller.followerList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                controller.moveToProfile(controller.followerList[index]!.uid!,
                    controller.followerList[index]!.id);
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  width: widthScreen(),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: CircleAvatar(
                            child: controller.followerList[index]!.avatar !=
                                    null
                                ? CachedNetworkImage(
                                    width: 50,
                                    height: 50,
                                    imageUrl:
                                        controller.followerList[index]!.avatar!,
                                    fit: BoxFit.fill,
                                  )
                                : Container(
                                    width: 50,
                                    height: 50,
                                    color: AppColors.purple,
                                  ),
                          )),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.followerList[index]!.displayName!,
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                controller.followerList[index]!.userName!,
                                style: TextStyle(
                                    color: AppColors.greyDark, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
}
