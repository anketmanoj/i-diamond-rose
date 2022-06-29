import 'package:diamon_rose_app/presentation/screen/block_user/block_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/block_user/shimmer/block_user_shimmer.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:diamon_rose_app/share/widget/input_debounce.dart';
import 'package:diamon_rose_app/share/widget/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlockView extends GetView<BlockViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarApp(
          backgroundColor: AppColors.white,
          isGradientBackground: false,
          title: Localy.of(context)!.blockManagementMenu,
          titleColor: AppColors.black,
          iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.black),
          actIconLeft: goBack),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) => SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // ignore: lines_longer_than_80_chars
              Obx(() =>
                  controller.blockUserList.isEmpty && !controller.isLoadingInit
                      ? Container(
                          width: widthScreen(percent: 100),
                          color: AppColors.white,
                          child: Column(
                            children: [
                              heightSpace(20),
                              Text(Localy.of(context)!.emptyBlockedListLabel)
                            ],
                          ),
                        )
                      : _buildTabBar(context)),
              _bodyBlock()
            ],
          ),
        ),
      );

  Container _buildTabBar(BuildContext context) => Container(
      color: AppColors.white,
      child: InputDebounceWidget(
          keyboardType: TextInputType.text,
          labelTitleInput: Localy.of(context)!.labelSearchUser,
          onChanged: (String value) => {},
          focusedBorderColors: AppColors.purple01,
          colorIconLeft: AppColors.purple01,
          cursorColor: AppColors.purple01,
          debounce: true,
          hideIconLeft: false));

  Widget _bodyBlock() => SingleChildScrollView(
        child: Container(
            height: heightScreen(percent: 82),
            width: widthScreen(),
            color: AppColors.white,
            child: Obx(
              () {
                if (controller.isLoadingInit) {
                  return BlockUserShimmerList();
                }
                return RefreshIndicator(
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 30),
                      itemCount: controller.blockUserList.length + 1,
                      itemBuilder: (_, index) {
                        if (index == controller.blockUserList.length) {
                          if (index == controller.totalElement.value) {
                            return Container();
                          }
                          return ShimmerBlockItem();
                        }
                        return GestureDetector(
                            onTap: controller.onTapBlockItem,
                            child: _buildBlockUserItem(_, index));
                      },
                      controller: controller.listViewController,
                    ),
                    onRefresh: () async {
                      controller.fetchData();
                    });
              },
            )),
      );

  Widget _buildBlockUserItem(BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Container(
          width: widthScreen(),
          child: Row(
            children: [
              Container(
                width: 55,
                height: 55,
                child: CircleAvatarCustom(
                  avatar: controller.blockUserList[index]!.avatar,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.blockUserList[index]!.displayName,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        controller.blockUserList[index]!.userName,
                        style:
                            TextStyle(color: AppColors.greyDark, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 45,
                height: 22,
                child: OutlineButtonWidget(
                  onPressed: () {
                    showConfirmDialog(
                        context: context,
                        message:
                            // ignore: lines_longer_than_80_chars
                            "${controller.blockUserList[index]!.displayName}${Localy.of(context)!.titleUnfollow}",
                        action: () => controller.unBlock(index: index),
                        positiveLabel: Localy.of(context)!.labelLift,
                        negativeLabel: Localy.of(context)!.labelCancelButton);
                  },
                  textColor: AppColors.darkPurple,
                  text: Localy.of(context)!.labelLift,
                  borderColor: AppColors.darkPurple,
                ),
              )
            ],
          ),
        ),
      );
}
