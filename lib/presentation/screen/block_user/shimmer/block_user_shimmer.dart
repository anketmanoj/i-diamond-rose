import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BlockUserShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int offset = 0;
    int time = 1000;

    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 18,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              offset += 5;
              time = 800 + offset;
              return Shimmer.fromColors(
                highlightColor: Colors.white,
                baseColor: AppColors.dimGray02,
                period: Duration(milliseconds: time),
                child: ShimmerBlockItem(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ShimmerBlockItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final containerWidth = MediaQuery.of(context).size.width - 200;
    final double containerHeight = 15;

    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 55,
            width: 55,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: containerHeight,
            width: containerWidth * 0.4,
            color: AppColors.grey,
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
