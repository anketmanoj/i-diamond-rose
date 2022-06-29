import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeShimmerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  avatarShimmerItem(),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 13),
                    child: Container(
                      height: 16,
                      width: 60,
                      color: AppColors.dimGray01,
                    ),
                  )
                ],
              ),
              Container(
                height: 20,
                width: widthScreen() / 2,
                child: Container(
                  height: 18,
                  width: 30,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 14,
                  color: AppColors.dimGray02,
                  width: widthScreen() / 1.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 14,
                  color: AppColors.dimGray02,
                  width: widthScreen() / 1.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 14,
                  color: AppColors.dimGray02,
                  width: widthScreen() / 1.5,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(children: [
                Icon(
                  Icons.my_library_music,
                  size: 25,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    color: AppColors.grey,
                    height: 14,
                    width: widthScreen(percent: 20),
                  ),
                )
              ]),
            ]));
  }

  Widget avatarShimmerItem() {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.grey,
      ),
      width: 50,
      height: 50,
    );
  }
}

Widget iconHomeShimmer({
  String? title,
  String? iconUrl,
  Icon? icon,
  bool? isShowTitle,
  bool isShare = false,
}) {
  return Container(
    width: 60,
    height: 60,
    child: Column(children: [
      icon == null
          ? Image.asset(
              iconUrl ?? "",
              height: isShare ? 25 : 30,
            )
          : icon,
      isShowTitle == true
          ? Padding(
              padding: EdgeInsets.only(top: isShare ? 5 : 5),
              child: Container(
                height: 10,
                width: 20,
                color: AppColors.dimGray01,
              ))
          : SizedBox()
    ]),
  );
}
