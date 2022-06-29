import 'package:diamon_rose_app/presentation/screen/home/shimmer/home_shimmer_item.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int time = 1000;

    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Spacer(),
        Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Shimmer.fromColors(
                  baseColor: AppColors.dimGray02,
                  highlightColor: Colors.white,
                  enabled: true,
                  period: Duration(milliseconds: time),
                  child: HomeShimmerItem(),
                ),
                Shimmer.fromColors(
                    baseColor: AppColors.dimGray02,
                    enabled: true,
                    highlightColor: Colors.white,
                    period: Duration(milliseconds: time),
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          iconHomeShimmer(
                              iconUrl: "${PNG_URL}like.png", isShowTitle: true),
                          iconHomeShimmer(
                              icon: Icon(Icons.star_outline,
                                  color: AppColors.dimGray02),
                              isShowTitle: true),
                          iconHomeShimmer(
                              iconUrl: "${PNG_URL}comment.png",
                              isShowTitle: true),
                          iconHomeShimmer(
                            iconUrl: "${PNG_URL}shopping.png",
                          ),
                          iconHomeShimmer(
                            iconUrl: "${PNG_URL}monney.png",
                          ),
                          iconHomeShimmer(
                            iconUrl: "${PNG_URL}music.png",
                          ),
                          iconHomeShimmer(
                            iconUrl: "${PNG_URL}share.png",
                            isShare: true,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ],
        ),
        SizedBox(height: 20)
      ],
    ));
  }
}
