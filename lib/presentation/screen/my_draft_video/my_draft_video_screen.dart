import 'package:diamon_rose_app/presentation/screen/my_draft_video/my_draft_video_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/my_draft_video/value/draft_video_item.dart';
import 'package:diamon_rose_app/presentation/screen/my_draft_video/value/draft_video_item_shimmer.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/shimmer_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDraftVideoScreen extends GetView<MyDraftVideoViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Localy.of(context)!.myDraftVideo,
            style: TextStyle(color: AppColors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
          onPressed: goBack,
        ),
      ),
      body: Obx(() => _bodyMyMaterials(context)),
    );
  }

  Widget _bodyMyMaterials(BuildContext context) {
    final draftVideos = controller.myDraftVideos;
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          ListView.builder(
            controller: controller.scrollController,
            itemBuilder: (context, index) {
              if (controller.isInit) {
                return DraftVideoItemShimmer();
              }

              final draftVideo = draftVideos[index];
              return draftVideo != null
                  ? DraftVideoItem(
                      controller: controller, draftVideoData: draftVideo)
                  : ShimmerCustom(child: Container(color: AppColors.black));
            },
            itemCount: controller.isInit ? 3 : draftVideos.length,
          ),
          if (controller.isLoading)
            Align(
              alignment: Alignment.bottomCenter,
              child: ShimmerCustom(
                highlightColor: AppColors.blue,
                child: Container(
                    height: 5,
                    width: double.infinity,
                    color: AppColors.greyDark),
              ),
            )
        ],
      ),
    );
  }
}
