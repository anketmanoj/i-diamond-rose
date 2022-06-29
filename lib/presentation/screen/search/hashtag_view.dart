import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HashTagView extends GetView {
  static const listHashTag = [
    "loveisgone",
    "loveisgonev1.1",
    "loveisgonenews",
    "loveisgonenav",
    "loveisgonenav2"
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
          itemCount: listHashTag.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: widthScreen(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "${PNG_URL}hash_tag.png",
                          width: 30,
                          height: 30,
                        ),
                        widthSpace(10),
                        Text(listHashTag[index])
                      ],
                    ),
                  ),
                  Text(
                    "255.0k views",
                    style: TextStyle(fontSize: 12, color: AppColors.greyDark),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      );
}
