import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoListView extends GetView {
  static const listImage = [
    "Sakura Wallpaper",
    "Sakura Wallpaper",
    "Sakura Wallpaper",
    "Sakura Wallpaper",
    "Sakura Wallpaper"
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
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: widthScreen() / heightScreen(percent: 80)),
            padding: EdgeInsets.all(5),
            itemCount: listImage.length,
            itemBuilder: (BuildContext context, int index) {
              return _stackVideoInfo(listImage[index]);
            }),
      );

  Widget _stackVideoInfo(String name) => Stack(
        children: [
          Container(
            width: widthScreen(percent: 50),
            height: heightScreen(percent: 70),
            color: AppColors.greyDark,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: heightScreen(percent: 26),
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
                    name,
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
}
