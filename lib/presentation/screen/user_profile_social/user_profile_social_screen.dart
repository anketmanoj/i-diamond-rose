import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_social/user_profile_social_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_social/value/user_profile_social_widget_details.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserProfileSocialScreen extends GetView<UserProfileSocialViewModel> {
  final bool _isProfile = LocalStorageKeys.isEditProfile;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBarApp(
          isGradientBackground: false,
          title: Localy.of(context)!.editInfo,
          titleColor: AppColors.white,
          iconLeft:
              Icon(Icons.arrow_back_ios, size: 24, color: AppColors.white),
          actIconLeft: Get.back,
          itemsRight: !_isProfile
              ? TextButton(
                  onPressed: () => goToAndRemoveAll(screen: ROUTER_MAIN),
                  child: Text(Localy.of(context)!.skip,
                      textAlign: TextAlign.center,
                      style: AppStyles.rightAppBarTextButton()),
                )
              : Container()),
      body: Obx(() => Stack(
            children: [
              _bodyBody(context),
              _buildSubmitButton(context),
            ],
          )),
    );
  }

  Widget _bodyBody(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 100),
        child: SingleChildScrollView(
            child: Column(
          children: [
            _buildAvatar(context),
            _buildUsername(context),
            UserProfileSocialDetail().textFormField(
                onChanged: (value) => controller.tiktokSubmit(),
                hintText: Localy.of(context)!.hintTiktok,
                errorText: controller.tiktokError.value ?? null,
                focusNode: controller.tiktokFocus,
                onSubmitted: (value) => controller.tiktokSubmit(),
                controller: controller.tiktokController),
            SizedBox(height: 20),
            UserProfileSocialDetail().textFormField(
                onChanged: (value) => controller.twitterSubmit(),
                hintText: Localy.of(context)!.hintTwitter,
                errorText: controller.twitterError.value ?? null,
                focusNode: controller.twitterFocus,
                onSubmitted: (value) => controller.twitterSubmit(),
                controller: controller.twitterController),
            SizedBox(height: 20),
            UserProfileSocialDetail().textFormField(
                onChanged: (value) => controller.instagramSubmit(),
                hintText: Localy.of(context)!.hintInstagram,
                errorText: controller.instagramError.value ?? null,
                focusNode: controller.instagramFocus,
                onSubmitted: (value) => controller.instagramSubmit(),
                controller: controller.instagramController),
            SizedBox(height: 20),
            UserProfileSocialDetail().textFormField(
                onChanged: (value) => controller.facebookSubmit(),
                hintText: Localy.of(context)!.hintFacebook,
                errorText: controller.facebookError.value ?? null,
                focusNode: controller.facebookFocus,
                onSubmitted: (value) => controller.facebookSubmit(),
                controller: controller.facebookController),
            SizedBox(height: 20),
            UserProfileSocialDetail().textFormField(
                maxLines: 5,
                onChanged: controller.onIntroductionChange,
                hintText: Localy.of(context)!.selfIntroduceTextHint,
                focusNode: controller.introductionFocus,
                onSubmitted: (text) {},
                maxLength: 200,
                controller: controller.introductionController),
          ],
        )),
      );

  Positioned _buildSubmitButton(BuildContext context) => Positioned(
        bottom: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(17),
          child: ButtonAction(
            content: _isProfile
                ? Localy.of(context)!.changeText
                : Localy.of(context)!.labelNext,
            action: () {
              controller.validateBeforeSubmitting(context);
            },
            textStyle: AppStyles.typeTextNormal(color: AppColors.black),
            color: AppColors.white,
          ),
        ),
      );

  Container _buildAvatar(BuildContext context) => Container(
        height: 150,
        width: 150,
        child: Stack(
          alignment: Alignment.center,
          children: [
            GetBuilder<UserProfileSocialViewModel>(
              builder: (_) {
                return CircleAvatarCustom(
                    radius: 100, avatar: controller.avatar.value);
              },
            ),
            Positioned(
              bottom: 0,
              child: IconButton(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(5),
                onPressed: () =>
                    _showPickerImageDialog(context, controller.CHANGE_AVATAR),
                iconSize: 35,
                icon:
                    Icon(Icons.camera_alt, size: 24, color: AppColors.greyDark),
              ),
            )
          ],
        ),
      );

  Widget _buildUsername(BuildContext context) => Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Text(
          StringUtils.displayNameFormat(controller.displayName.value,
              maxLength: 18),
          style: AppStyles.typeWeight400(color: AppColors.white, size: 25)));

  Future _showPickerImageDialog(BuildContext context, String changeType) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildPickerImageItem(
                  Localy.of(context)!.labelSelectPhotoMenu, Icons.photo,
                  textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
                  onPressed: () {
                controller
                    .onTakeImage(
                      context,
                      ImageSource.gallery,
                    )
                    .whenComplete(() => showDialog(
                        context: controller.context!,
                        builder: (contextDialog) {
                          return Stack(
                            children: [
                              Center(
                                child: buildImage(),
                              ),
                              Positioned(
                                  bottom: heightScreen(percent: 10),
                                  left: widthScreen(percent: 40),
                                  child: OutlinedButton(
                                      onPressed: () =>
                                          controller.crop(changeType),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: AppColors.white,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.done),
                                          Text(Localy.of(contextDialog)!
                                              .doneLabel)
                                        ],
                                      )))
                            ],
                          );
                        }));
                Get.back();
              }),
              Divider(height: 1, color: AppColors.greyDark),
              _buildPickerImageItem(
                  Localy.of(context)!.labelTakePhotoMenu, Icons.photo_camera,
                  textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
                  onPressed: () {
                controller
                    .onTakeImage(context, ImageSource.camera)
                    .whenComplete(() => showDialog(
                        context: controller.context!,
                        builder: (contextDialog) {
                          return Stack(
                            children: [
                              Center(
                                child: buildImage(),
                              ),
                              Positioned(
                                  bottom: heightScreen(percent: 10),
                                  left: widthScreen(percent: 40),
                                  child: OutlinedButton(
                                      onPressed: () =>
                                          controller.crop(changeType),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: AppColors.white,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.done),
                                          Text(Localy.of(contextDialog)!
                                              .doneLabel)
                                        ],
                                      )))
                            ],
                          );
                        }));
                Get.back();
              }),
              Divider(height: 1, color: AppColors.greyDark),
              _buildPickerImageItem(
                  Localy.of(context)!.labelDeletePhotoMenu, Icons.delete,
                  textStyle: AppStyles.typeTextNormal(color: AppColors.red),
                  onPressed: () {
                controller.deleteAvatar();
              })
            ],
          ),
        );
      },
    );
  }

  ListTile _buildPickerImageItem(String label, IconData icon,
          {TextStyle? textStyle, Null Function()? onPressed}) =>
      ListTile(
        horizontalTitleGap: 0,
        onTap: onPressed,
        leading: Icon(icon),
        title: _buildText(content: label, style: textStyle),
      );

  Padding _buildText({required String content, TextStyle? style}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(content,
            style: style ?? AppStyles.typeTextNormal(),
            textAlign: TextAlign.start),
      );

  Widget buildImage() {
    return GetBuilder<UserProfileSocialViewModel>(
        init: Get.find<UserProfileSocialViewModel>(),
        builder: (controller) {
          if (controller.provider != null) {
            return ExtendedImage(
              image: controller.provider!,
              height: 400,
              width: 400,
              extendedImageEditorKey: controller.editorKey,
              mode: ExtendedImageMode.editor,
              fit: BoxFit.contain,
              initEditorConfigHandler: (_) => EditorConfig(
                maxScale: 8,
                cropRectPadding: const EdgeInsets.all(20),
                hitTestSize: 20,
                cropAspectRatio: AVATAR_CROP_ASPECT,
              ),
            );
          } else {
            goBack();
          }
          return Container(
            key: controller.editorKey,
          );
        });
  }
}
