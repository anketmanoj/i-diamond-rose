import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/presentation/screen/follow/follow_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:diamon_rose_app/share/widget/input_debounce.dart';
import 'package:diamon_rose_app/share/widget/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowingView extends GetView<FollowViewModel> {
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
                visible: controller.isSearchFollowing.value,
                child: _buildTabBar(context)),
            controller.followingList.isEmpty
                ? Container(
                    width: widthScreen(percent: 100),
                    height: heightScreen(percent: 100),
                    color: AppColors.white,
                    child: Column(
                      children: [
                        heightSpace(20),
                        Text(Localy.of(context)!.labelNoFollowing)
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
          onChanged: controller.onChangeSearchFieldFollowing,
          focusedBorderColors: AppColors.purple01,
          colorIconLeft: AppColors.purple01,
          cursorColor: AppColors.purple01,
          debounce: true,
          customController: controller.searchFollowingController,
          hideIconLeft: false));

  Container _bodyFollowing() => Container(
      height: heightScreen(),
      width: widthScreen(),
      color: AppColors.white,
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          itemCount: controller.followingList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                controller.moveToProfile(controller.followingList[index]!.uid!,
                    controller.followingList[index]!.id);
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
                            child:
                                controller.followingList[index]!.avatar != null
                                    ? CachedNetworkImage(
                                        width: 50,
                                        height: 50,
                                        imageUrl: controller
                                            .followingList[index]!.avatar!,
                                        fit: BoxFit.fill)
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.followingList[index]!.displayName!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.black,
                                    fontSize: 16),
                              ),
                              Text(
                                controller.followingList[index]!.userName!,
                                style: TextStyle(
                                    color: AppColors.greyDark, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 25,
                        child: OutlineButtonWidget(
                          onPressed: () {
                            showConfirmDialog(
                                context: context,
                                message:
                                    // ignore: lines_longer_than_80_chars
                                    "${controller.followingList[index]!.displayName}${Localy.of(context)!.titleUnfollow}",
                                action: () {
                                  controller.unFollow(index);
                                },
                                positiveLabel: Localy.of(context)!.labelLift,
                                negativeLabel:
                                    Localy.of(context)!.labelCancelButton);
                          },
                          textColor: AppColors.darkPurple,
                          text: Localy.of(context)!.labelLift,
                          borderColor: AppColors.darkPurple,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ));
}
