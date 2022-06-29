import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/widget/shimmer_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DraftVideoItemShimmer extends StatelessWidget {
  DraftVideoItemShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);
    final videoWidth = info.size.width / 3;
    final videoHeight = (info.size.height - info.padding.top) / 3;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
      height: videoHeight,
      child: ShimmerCustom(
        child: Row(
          children: [
            Container(
                height: videoHeight, width: videoWidth, color: AppColors.white),
            SizedBox(width: 10),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Video name',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            height: 38,
                            width: 96,
                            margin: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                                color: AppColors.yellow,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5))))),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text('YYYY-MM-DD')),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: SvgPicture.asset(AppImages.ic_delete_svg))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
