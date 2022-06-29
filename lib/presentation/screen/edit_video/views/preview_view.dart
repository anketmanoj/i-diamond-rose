import 'package:diamon_rose_app/domain/entities/enum/status_video_type.dart';
import 'package:diamon_rose_app/presentation/screen/edit_video/edit_video_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/edit_video/values/edit_video_border.dart';
import 'package:diamon_rose_app/presentation/screen/edit_video/views/edit_view.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/text_field_default.dart';
import 'package:diamon_rose_app/share/widget/video_progress_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PreviewView extends StatelessWidget {
  const PreviewView({Key? key, required this.controller}) : super(key: key);
  final EditVideoViewModel controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _bodyBody(context),
      floatingActionButton: _buildBackButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _bodyBody(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            EditView(controller: controller),
            ...EditVideoBorder().BuildBorder(controller),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 17, horizontal: 27),
                child: GetX<EditVideoViewModel>(
                    builder: (_) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            VideoProgressBarWidget(
                                currentTime: controller.getCurrentTime,
                                videoDuration:
                                    controller.getVideoDuration.toInt()),
                            Text(
                              controller.getProgressString,
                              style: AppStyles.typeTextNormal(
                                  color: AppColors.greyDark),
                            )
                          ],
                        ))),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: SvgPicture.asset(AppImages.ic_save_svg),
                onPressed: () {
                  if (controller.isPreviewPlaying) {
                    controller.startPreview;
                  }
                  showBottomSheetDefault(
                      context: context, widget: _buildSaveModeMenu(context));
                },
              ),
            ),
            _buildPlayPauseButton(),
          ],
        ),
      );

  Widget _buildBackButton(BuildContext context) => Container(
        width: 100,
        height: 70,
        child: ButtonAction(
            action: Get.back,
            content: Localy.of(context)!.back,
            textStyle: AppStyles.typeTextNormal(color: AppColors.white),
            color: AppColors.blue,
            radius: 5,
            isNoPadding: false),
      );

  Widget _buildPlayPauseButton() => Obx(() => Center(
      child: IconButton(
          iconSize: 80,
          color: AppColors.white,
          onPressed: controller.startPreview,
          icon: SvgPicture.asset(
              controller.isPreviewPlaying
                  ? AppImages.ic_pause_svg
                  : AppImages.ic_play_svg,
              color: AppColors.black))));

  Widget _buildSaveModeMenu(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildSaveModeItem(
              Localy.of(context)!.labelComplete,
              onPressed: () => _showCaptionDialog(
                context,
                action: () =>
                    controller.onRequestMergeVideo(StatusVideoType.completed),
              ),
            ),
            _buildSaveModeItem(
              Localy.of(context)!.labelMyMaterials,
              onPressed: () => _showCaptionDialog(
                context,
                action: () =>
                    controller.onRequestMergeVideo(StatusVideoType.draft),
              ),
            ),
            _buildSaveModeItem(Localy.of(context)!.labelBackToEdit,
                textStyle: AppStyles.typeTextNormal(color: AppColors.black),
                color: AppColors.white,
                onPressed: controller.onSwitchToEditModePressed)
          ],
        ),
      );

  Widget _buildSaveModeItem(String label,
          {TextStyle? textStyle,
          required Function() onPressed,
          Color? color}) =>
      ButtonAction(
          action: onPressed,
          content: label,
          textStyle:
              textStyle ?? AppStyles.typeTextNormal(color: AppColors.white),
          color: color ?? AppColors.blue,
          radius: 5);

  void _showCaptionDialog(BuildContext context, {required Function() action}) {
    showDialog<bool?>(
        context: context,
        builder: (BuildContext context) => Dialog(
            insetPadding: EdgeInsets.all(10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 18, bottom: 12),
                    margin: EdgeInsets.only(top: 13, right: 8, left: 8),
                    decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(0.6),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildCaptionEdittext(context),
                        GetX<EditVideoViewModel>(builder: (_) {
                          return _buildSubmit(context);
                        })
                      ],
                    ),
                  ),
                  _buildIconClose()
                ],
              ),
            ))).then((value) {
      if (value ?? false) {
        Get.back();
        action();
      }
    });
  }

  Widget _buildIconClose() => Positioned(
        right: 0,
        child: GestureDetector(
          onTap: Get.back,
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.white,
              child: Icon(Icons.close, color: Colors.red),
            ),
          ),
        ),
      );

  Widget _buildSubmit(
    BuildContext context,
  ) {
    final enable = controller.onCaptionValidate();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: ButtonAction(
        action: () {
          if (enable) {
            Get.back(result: true);
          }
        },
        content: Localy.of(context)!.labelOkButton,
        textStyle: TextStyle(
            color: enable ? AppColors.white : AppColors.white.withOpacity(0.5)),
        color: enable ? AppColors.blue : AppColors.blue.withOpacity(0.5),
        isNoPadding: false,
      ),
    );
  }

  Widget _buildCaptionEdittext(BuildContext context) => Container(
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 20, bottom: 30),
        child: TextFieldDefault(
          borderColor: AppColors.blue,
          focusNode: controller.videoCapFocus,
          textInputType: TextInputType.name,
          textController: controller.videoCapController.value,
          suffixIcon: Icons.cancel,
          textStyle: AppStyles.typeTextNormal(color: AppColors.black),
          errorCode: null,
          onChanged: controller.onVideoCapChange,
          suffixIconOnTap: controller.onVideoCapClear,
          hint: Localy.of(context)!.labelVideoCaption,
          hintStyle:
              AppStyles.typeTextNormal(color: AppColors.greyDark, size: 14),
        ),
      );
}
