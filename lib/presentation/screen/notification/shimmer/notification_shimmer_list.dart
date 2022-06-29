import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NotificationShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int offset = 0;
    int time = 1000;

    return SafeArea(
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 15.5),
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 18,
            ),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              offset += 5;
              time = 800 + offset;
              return Shimmer.fromColors(
                highlightColor: Colors.white,
                baseColor: AppColors.dimGray02,
                period: Duration(milliseconds: time),
                child: ShimmerItem(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ShimmerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final containerWidth = MediaQuery.of(context).size.width - 200;
    final double containerHeight = 15;

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 45,
            width: 45,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: containerHeight,
                width: containerWidth * 0.5,
                color: AppColors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: containerHeight,
                width: containerWidth,
                color: AppColors.grey,
              ),
            ],
          ),
          Spacer(),
          Container(
            height: containerHeight,
            width: containerWidth * 0.2,
            color: AppColors.grey,
          ),
        ],
      ),
    );
  }
}
