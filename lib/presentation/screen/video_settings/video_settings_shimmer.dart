import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VideoSettingShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Shimmer.fromColors(
          highlightColor: AppColors.white,
          baseColor: AppColors.dimGray02,
          child:
              Center(child: Text("Loading", style: TextStyle(fontSize: 30)))),
    );
  }
}
