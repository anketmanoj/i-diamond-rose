import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/shimmer/home_shimmer_list.dart';
import 'package:diamon_rose_app/presentation/screen/home/tab_view/tab_view_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget PageViewTab({HomeViewModel? homeViewModel}) {
  return Get.find<HomeViewModel>().status.isSuccess
      ? homeViewModel!.isEmpty!.isFalse
          ? RefreshIndicator(
              onRefresh: homeViewModel.pullRefresh,
              child: NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) {
                    if (scrollNotification is ScrollEndNotification) {
                      Future.delayed(Duration(milliseconds: 100), () {
                        final int newPage = Get.find<HomeViewModel>()
                            .pageItemController!
                            .page!
                            .round();
                        Get.find<HomeViewModel>()
                            .pageItemController!
                            .animateToPage(newPage,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.slowMiddle);
                      });
                    }
                    return true;
                  },
                  child: PageView.builder(
                      allowImplicitScrolling: true,
                      controller: homeViewModel.pageItemController,
                      pageSnapping: true,
                      itemCount: homeViewModel.listVideo.length,
                      scrollDirection: Axis.vertical,
                      onPageChanged: (index) async {
                        if (homeViewModel.isScrollUp &&
                            index + 2 == homeViewModel.listVideo.length) {
                          await homeViewModel.loadData();
                        }
                        await Get.find<TabViewModel>().intVideo(
                            index: index, item: homeViewModel.listVideo[index]);
                      },
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Get.find<TabViewModel>().controller != null
                                ? VideoCard(
                                    homeViewModel: homeViewModel,
                                    videoEntity: homeViewModel.listVideo[index],
                                  )
                                : HomeShimmerList()
                          ],
                        );
                      })))
          : Container(
              color: AppColors.greyDark,
              child: Center(
                  child: Text(Localy.of(homeViewModel.context!)!.emptyLabel)))
      : Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: HomeShimmerList(),
        );
}
