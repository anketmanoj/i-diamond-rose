import 'package:diamon_rose_app/presentation/screen/search/search_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabTopView extends GetView<SearchViewModel> {
  final SearchViewModel controller = Get.put(SearchViewModel());

  Widget build(BuildContext context) {
    return CustomScaffold(
      enableSingleScrollView: true,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) => Container(
        color: AppColors.white,
        child: Column(
          children: [
            heightSpace(20),
            _titleView(Localy.of(context)!.videoTitle, 2),
            heightSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  _stackVideoInfo(),
                  widthSpace(5),
                  _stackVideoInfo(),
                ],
              ),
            ),
            heightSpace(10),
            _titleView(Localy.of(context)!.userTitle, 1),
            heightSpace(10),
            _userView(),
            heightSpace(5),
            _userView(),
            heightSpace(10),
            _titleView(Localy.of(context)!.hashTagTitle, 3),
            heightSpace(10),
            _hashTagView(),
            heightSpace(5),
            _hashTagView(),
            heightSpace(100),
          ],
        ),
      );

  Widget _titleView(String title, int index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: TextStyle(color: AppColors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                controller.navigateToTab(index);
              },
              child: Builder(builder: (context) {
                return Row(
                  children: [
                    Text(
                      Localy.of(context)!.more,
                      style: TextStyle(color: AppColors.greyDark),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,
                        size: 15, color: AppColors.greyDark),
                  ],
                );
              }),
            ),
          )
        ],
      );

  Widget _hashTagView() => Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image.asset(
                  "${PNG_URL}hash_tag.png",
                  width: 30,
                  height: 30,
                ),
                widthSpace(10),
                Text("Love is Gone")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Text(
              "225.0k views",
              style: TextStyle(fontSize: 10, color: AppColors.greyDark),
            ),
          )
        ],
      ));

  Widget _stackVideoInfo() => Stack(
        children: [
          Container(
            width: widthScreen(percent: 40),
            height: heightScreen(percent: 40),
            color: AppColors.greyDark,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: heightScreen(percent: 27),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  "06-28",
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    "Sakura Wallpaper",
                    style: TextStyle(color: AppColors.white),
                  )),
              heightSpace(5),
              Row(
                children: [
                  widthSpace(5),
                  CircleAvatarCustom(
                    avatar: '',
                    radius: 14,
                  ),
                  widthSpace(5),
                  Text(
                    "Sakura",
                    style: TextStyle(color: AppColors.white),
                  ),
                  Container(width: widthScreen(percent: 10)),
                  Image.asset(
                    "${PNG_URL}like.png",
                    width: 16,
                    height: 16,
                  ),
                  widthSpace(5),
                  Text(
                    "3245",
                    style: TextStyle(color: AppColors.white),
                  )
                ],
              )
            ],
          )
        ],
      );

  Widget _userView() => Row(
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
                "Love is Gone",
              ),
              heightSpace(2),
              Text(
                "Sakura",
                style: TextStyle(fontSize: 10, color: AppColors.greyDark),
              ),
              heightSpace(2),
              Text(
                "2048 Follower • 390 Video ",
                style: TextStyle(fontSize: 10, color: AppColors.greyDark),
              ),
              heightSpace(2),
            ],
          )
        ],
      );
}
