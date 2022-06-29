import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/widget/shimmer_custom.dart';
import 'package:flutter/material.dart';

class ProfileShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildProfileInfo(),
            _buildOtherInfo(context),
            _buildIntroduce(),
            _buildTabBar(context),
            _buildVideoList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfo() {
    final coverImageHeight = 170.0;
    final avatarSize = 120.0;
    return Stack(
      children: [
        _buildCoverImage(coverImageHeight),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildAvatar(coverImageHeight, avatarSize),
            _buildPersonalInfo(coverImageHeight),
            _buildFollowButton(coverImageHeight)
          ],
        )
      ],
    );
  }

  Widget _buildFollowButton(double coverImageHeight) => Expanded(
        child: ShimmerCustom(
            child: Container(
          color: AppColors.white,
          height: 35,
          margin:
              EdgeInsets.only(top: coverImageHeight + 5, left: 15, right: 17),
        )),
      );

  Widget _buildCoverImage(double height) => ShimmerCustom(
        child: Container(
          color: AppColors.white,
          width: double.infinity,
          height: height,
        ),
      );

  Widget _buildAvatar(double coverImageHeight, double avatarSize) => Container(
        margin:
            EdgeInsets.only(top: coverImageHeight - (avatarSize / 2), left: 17),
        height: avatarSize,
        width: avatarSize,
        child: ShimmerCustom(
            child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(shape: BoxShape.circle),
        )),
      );

  Widget _buildPersonalInfo(double coverImageHeight) => ShimmerCustom(
        child: Padding(
          padding: EdgeInsets.only(left: 15, top: coverImageHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                color: AppColors.white,
                height: 30,
                width: 120,
              ),
              Container(
                margin: EdgeInsets.all(5),
                color: AppColors.white,
                height: 20,
                width: 120,
              ),
              Container(
                margin: EdgeInsets.all(5),
                color: AppColors.white,
                height: 20,
                width: 120,
              ),
            ],
          ),
        ),
      );

  Padding _buildOtherInfo(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 17),
        child: Row(
          children: [
            _otherInfoItem(Localy.of(context)!.labelFollows),
            const SizedBox(width: 50),
            _otherInfoItem(Localy.of(context)!.followingLabel),
            const SizedBox(width: 50),
            _otherInfoItem(Localy.of(context)!.postText),
          ],
        ),
      );

  Widget _otherInfoItem(String title) => ShimmerCustom(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(height: 10),
            Container(height: 30, width: 70, color: AppColors.white),
          ],
        ),
      );

  Widget _buildIntroduce() => ShimmerCustom(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              child: Divider(height: 1, color: AppColors.white),
            ),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                    width: double.infinity,
                    height: 100,
                    color: AppColors.white)),
          ],
        ),
      );

  Padding _buildTabBar(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                  child: ShimmerCustom(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                              child: ShimmerCustom(
                            child: Text(Localy.of(context)!.labelFreeTab),
                          ))))),
              Expanded(
                  child: ShimmerCustom(
                      child: Center(
                          child: Tab(text: Localy.of(context)!.labelPaidTab)))),
            ],
          ),
        ),
      );

  Widget _buildVideoList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      child: Flex(
        direction: Axis.vertical,
        children: [
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: 8,
              itemBuilder: (BuildContext ctx, index) {
                return ShimmerItem();
              })
        ],
      ),
    );
  }
}

class ShimmerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShimmerCustom(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.purple, width: 2),
            color: AppColors.grey),
      ),
    );
  }
}
