import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FavoriteShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int offset = 0;
    int time = 1000;

    return SafeArea(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 8),
              child: Shimmer.fromColors(
                  highlightColor: Colors.white,
                  baseColor: AppColors.dimGray02,
                  period: Duration(milliseconds: time),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.dimGray02,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.black),
                    ),
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                  ))),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                offset += 5;
                time = 800 + offset;
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Shimmer.fromColors(
                      highlightColor: Colors.white,
                      baseColor: AppColors.dimGray02,
                      period: Duration(milliseconds: time),
                      child: ShimmerItem(),
                    ));
              },
            ),
          ),
        ],
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
      margin: EdgeInsets.symmetric(vertical: 7.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 80,
            color: Colors.grey,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
              SizedBox(height: 16),
              Container(
                height: containerHeight,
                width: containerWidth * 0.75,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
