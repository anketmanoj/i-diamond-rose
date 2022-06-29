import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetMenu extends StatelessWidget {
  const BottomSheetMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              Localy.of(context)!.textShareNetWork,
              style: AppStyles.typeText18(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 87,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MenuButton(
                    title: Localy.of(context)!.titleLink,
                    action: () {},
                    image: AppImages.ic_link_svg,
                  ),
                  MenuButton(
                    title: Localy.of(context)!.titleFacebook,
                    action: () {},
                    image: AppImages.menu_logo_facebook_svg,
                  ),
                  MenuButton(
                    title: Localy.of(context)!.titleLine,
                    action: () {},
                    image: AppImages.menu_logo_line_svg,
                  ),
                  MenuButton(
                    title: Localy.of(context)!.titleMessenger,
                    action: () {},
                    image: AppImages.menu_logo_messenger_svg,
                  ),
                  MenuButton(
                    title: Localy.of(context)!.titleTwitter,
                    action: () {},
                    image: AppImages.menu_logo_twitter_svg,
                  ),
                  MenuButton(
                    title: Localy.of(context)!.other,
                    action: () {},
                    image: AppImages.ic_more_svg,
                    color: AppColors.dimGray03,
                  )
                ],
              ),
            ),
            Container(
              height: 0.5,
              color: AppColors.dimGray01,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Container(
                height: 92,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    MenuButton(
                      title: Localy.of(context)!.titleReport,
                      action: () {},
                      image: AppImages.ic_report_svg,
                    ),
                    MenuButton(
                      title: Localy.of(context)!.titleBlock,
                      action: () {},
                      image: AppImages.ic_block_svg,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  MenuButton({
    Key? key,
    required this.title,
    required this.action,
    required this.image,
    this.verticalPadding = 10,
    this.horizontalPadding = 10,
    this.color,
  }) : super(key: key);

  final String title;
  final String image;
  final VoidCallback action;
  final double verticalPadding;
  final double horizontalPadding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: verticalPadding, horizontal: horizontalPadding),
      child: GestureDetector(
        onTap: action,
        child: Column(
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: color ?? Colors.transparent),
              child: SvgPicture.asset(image),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: AppStyles.typeTextNormal(color: AppColors.dimGray01),
            ),
          ],
        ),
      ),
    );
  }
}

