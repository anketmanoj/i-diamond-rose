import 'package:diamon_rose_app/domain/entities/wk_video_entity/my_draft_video_entity.dart';
import 'package:diamon_rose_app/presentation/screen/my_draft_video/my_draft_video_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/my_draft_video/value/video_view.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DraftVideoItem extends StatelessWidget {
  DraftVideoItem({
    Key? key,
    required this.controller,
    required this.draftVideoData,
  }) : super(key: key);

  final MyDraftVideoViewModel controller;
  final MyDraftVideoEntity draftVideoData;

  @override
  Widget build(BuildContext context) {
    final videoWidth = controller.screenWidth / 3;
    final videoHeight = controller.screenHeight / 3;
    return Container(
      height: videoHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
        child: Row(
          children: [
            Container(
              height: videoHeight,
              width: videoWidth,
              color: AppColors.black,
              child: VideoView(
                  listLayer: draftVideoData.listLayer,
                  videoWidth: videoWidth,
                  videoHeight: videoHeight),
            ),
            SizedBox(width: 10),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(draftVideoData.wkVideoName,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.purple01)),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: OutlineButtonWidget(
                        text: Localy.of(context)!.labelEdit,
                        onPressed: () =>
                            controller.onNavigateEditVideo(draftVideoData),
                        textColor: AppColors.white,
                        borderColor: AppColors.darkPurple,
                        backgroundColor: AppColors.darkPurple,
                        paddingHorizontal: 20,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text(
                              StringUtils.japanDateFormatter(
                                  draftVideoData.lastUpdatedAt),
                              style: TextStyle(color: AppColors.greyDark)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.zero,
                              icon: SvgPicture.asset(AppImages.ic_delete_svg),
                              onPressed: () => showConfirmDialog(
                                  context: context,
                                  message:
                                      Localy.of(context)!.labelDefaultDelete,
                                  action: () => controller
                                      .onDeleteVideo(draftVideoData.id))),
                        ),
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
