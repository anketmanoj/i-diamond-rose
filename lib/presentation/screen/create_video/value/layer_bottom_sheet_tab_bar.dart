import 'package:diamon_rose_app/presentation/screen/create_video/create_video_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget LayerBottomSheetTabBar(
  CreateVideoVideoModel controller,
) {
  final BuildContext context = Get.context!;
  return Container(
    height: 30,
    margin: EdgeInsets.only(bottom: 15),
    child: TabBar(
      controller: controller.tabController,
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: AppStyles.typeText18(color: AppColors.white, size: 13),
      indicator: BoxDecoration(
        color: AppColors.darkPurple,
        borderRadius: BorderRadius.circular(3),
      ),
      indicatorColor: Colors.transparent,
      tabs: [
        _tabItem(context, Localy.of(context)!.myARText),
        _tabItem(context, Localy.of(context)!.recommendBackgroundText),
        _tabItem(context, Localy.of(context)!.myEffectText),
      ],
    ),
  );
}

Widget _tabItem(BuildContext context, String label) => Tab(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          child: Text(label)),
    );
