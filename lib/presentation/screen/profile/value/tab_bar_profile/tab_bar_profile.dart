import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_bar_profile_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarProfile extends StatelessWidget {
  const TabBarProfile(
      {Key? key,
      required this.profileViewModel,
      required this.tabBarProfileViewModel})
      : super(key: key);

  final ProfileViewModel profileViewModel;
  final TabBarProfileViewModel tabBarProfileViewModel;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabBarProfileViewModel>(
        init: tabBarProfileViewModel,
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TabBar(
              onTap: tabBarProfileViewModel.changeTabIndex.call,
              controller: tabBarProfileViewModel.tabController,
              indicatorPadding: EdgeInsets.zero,
              labelColor: AppColors.black,
              unselectedLabelColor: AppColors.greyDark,
              indicatorColor: AppColors.black,
              tabs: profileViewModel.isLocalUser
                  ? [
                      Tab(text: Localy.of(context)!.labelFreeTab),
                      Tab(text: Localy.of(context)!.labelPaidTab),
                      // Tab(text: Localy.of(context)!.labelOther),
                    ]
                  : [
                      Tab(text: Localy.of(context)!.labelFreeTab),
                      Tab(text: Localy.of(context)!.labelPaidTab),
                    ],
            ),
          );
        });
  }
}
