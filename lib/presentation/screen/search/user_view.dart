import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends GetView {
  static const userList = [
    "Love Is Gone",
    "Love Is Gone",
    "Love Is Gone",
    "Love Is Gone",
    "Love Is Gone",
    "Love Is Gone",
  ];

  Widget build(BuildContext context) {
    return CustomScaffold(
      enableSingleScrollView: false,
      body: _bodyHashTag(context),
    );
  }

  Widget _bodyHashTag(BuildContext context) => Container(
        height: heightScreen(),
        width: widthScreen(),
        color: AppColors.white,
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: userList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: controller.onNavigateToProfile.call,
              child: Container(
                  width: widthScreen(),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: CircleAvatarCustom(
                          avatar: '',
                          radius: 20,
                        ),
                      ),
                      widthSpace(5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userList[index],
                          ),
                          heightSpace(2),
                          Text(
                            "Sakura",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.greyDark),
                          ),
                          heightSpace(2),
                          Text(
                            "2048 Follower • 390 Video ",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.greyDark),
                          ),
                          heightSpace(2),
                        ],
                      )
                    ],
                  )),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      );
}
