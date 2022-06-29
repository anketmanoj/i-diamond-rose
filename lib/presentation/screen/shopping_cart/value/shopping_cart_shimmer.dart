import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShoppingCartShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int offset = 0;
    int time = 1000;

    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: heightScreen(percent: 2));
      },
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        offset += 5;
        time = 800 + offset;
        return Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: AppColors.dimGray02,
          period: Duration(milliseconds: time),
          child: ShoppingCartItem(),
        );
      },
    );
  }
}


class ShoppingCartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 180,
              width: widthScreen(percent: 32),
              color: AppColors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //Title
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: 20,
                        width: 100,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
                // Price
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      height: 30,
                      width: 50,
                      color: AppColors.grey,
                    )),
                SizedBox(
                  height: heightScreen(percent: 1),
                ),
                //Content
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      height: 20,
                      width: 150,
                      color: AppColors.grey,
                    )),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
