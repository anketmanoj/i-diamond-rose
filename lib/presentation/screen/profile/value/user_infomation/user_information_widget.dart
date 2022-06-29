import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/drawer_menu.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/profile_shimmer.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/text_screen.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/follow_manager.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserInformation extends GetView<UserInformationViewModel> {
  const UserInformation(
      {Key? key,
      required this.profileViewModel,
      required this.userInformationViewModel})
      : super(key: key);

  final ProfileViewModel profileViewModel;
  final UserInformationViewModel userInformationViewModel;

  @override
  Widget build(BuildContext context) {
    final coverImageHeight = 170.0;
    final avatarSize = 100.0;
    return GetBuilder<UserInformationViewModel>(
        init: userInformationViewModel,
        builder: (controller) {
          if (controller.userContentModel != null) {
            return Stack(
              children: [
                _buildCoverImage(context, coverImageHeight),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildAvatar(context, coverImageHeight, avatarSize),
                    _buildPersonalInfo(coverImageHeight),
                    Spacer(),
                    _buildFollowButton(context, coverImageHeight),
                  ],
                )
              ],
            );
          }
          return ProfileShimmer();
        });
  }

  Widget _buildCoverImage(BuildContext context, double height) {
    final userInformation = Get.find<UserInformationViewModel>();
    return Stack(
      children: [
        CachedNetworkImage(
          height: height,
          imageUrl: controller.coverImage.value,
          width: MediaQuery.of(context).size.width,
          cacheKey:
              "$COVER_IMAGE_KEY${controller.userContentModel!.uid}${controller.keyCoverImage}",
          // httpHeaders: userInformation.header,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              color: AppColors.greyDark,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: imageProvider,
              ),
            ),
          ),
          placeholder: (context, url) => Container(
            child: Image.network(
              controller.coverImage.value,
              loadingBuilder: (context, child, imageChunkEvent) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, exception, stackTrace) {
                return Container(
                  color: AppColors.white,
                );
              },
            ),
          ),
          errorWidget: (context, url, error) => Image.asset(
            "${PNG_URL}background.png",
            fit: BoxFit.cover,
          ),
        ),
        profileViewModel.isLocalUser
            ? Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  onPressed: () =>
                      _showPickerImageDialog(context, CHANGE_COVER_IMAGE),
                  iconSize: 25,
                  icon: SvgPicture.asset(
                    AppImages.ic_update_svg,
                    color: Colors.grey,
                  ),
                ),
              )
            : Container()
      ],
    );
  }

  Widget _buildAvatar(
      BuildContext context, double coverImageHeight, double avatarSize) {
    return Container(
        margin:
            EdgeInsets.only(top: coverImageHeight - (avatarSize / 2), left: 17),
        height: avatarSize,
        width: avatarSize,
        child: GestureDetector(
          onTap: () => profileViewModel.isLocalUser
              ? _showPickerImageDialog(context, CHANGE_AVATAR)
              : showModalBottomSheet(
                  context: context,
                  backgroundColor: AppColors.white,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  builder: (cxt) {
                    return bottomSheetReport(cxt, profileViewModel);
                  }),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Obx(
                () => CircleAvatarCustom(
                    radius: 60,
                    //headers: controller.header,
                    //uid: controller.userContentModel!.uid,
                    userName: controller.userContentModel!.userName,
                    //keyAvatar: controller.keyAvatar,
                    avatar: controller.avatar.value),
              ),
              profileViewModel.isLocalUser
                  ? Positioned(
                      bottom: 5,
                      child: SvgPicture.asset(
                        AppImages.ic_camera_svg,
                        color: AppColors.greyDark,
                      ))
                  : Container()
            ],
          ),
        ));
  }

  Widget _buildPersonalInfo(double coverImageHeight) =>
      GetBuilder<UserInformationViewModel>(
          init: controller,
          builder: (_) {
            if (controller.userContentModel != null) {
              return Padding(
                  padding: EdgeInsets.only(left: 15, top: coverImageHeight),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CommonProfileScreen().TextWidgetNormal(
                                content: StringUtils.displayNameFormat(
                                    controller.userContentModel!.displayName!,
                                    maxLength: 18),
                                style: AppStyles.typeBold22(size: 16)),
                            controller.userContentModel!.isOfficial != null &&
                                    controller.userContentModel!.isOfficial!
                                ? Padding(
                                    padding:
                                        EdgeInsets.only(left: 5, right: 10),
                                    child: Text(
                                      Localy.of(controller.context!)!
                                          .officialLabel,
                                      style: AppStyles.typeTextNormal(
                                          size: 13, color: AppColors.blue),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                        CommonProfileScreen().TextWidgetNormal(
                            content: controller.userContentModel!.userName!,
                            style: AppStyles.typeText18(size: 14)),
                        CommonProfileScreen().TextWidgetNormal(
                            content: '', style: AppStyles.typeText18(size: 14)),
                      ]));
            }
            return ProfileShimmer();
          });

  Widget _buildFollowButton(BuildContext context, double? coverImageHeight) {
    return GetBuilder<FollowManager>(builder: (state) {
      final String? userName = controller.userContentModel!.userName;
      final String unfollowConfirmMessage =
          Localy.of(context)!.unfollowConfirmMessage;
      return Padding(
        padding: EdgeInsets.only(right: 5, top: coverImageHeight!),
        child: profileViewModel.isLocalUser
            ? Container()
            : Container(
                child: Visibility(
                    // TODO(FollowVisible): Hidden when is themselves.
                    visible: true,
                    child: Obx(() => ButtonAction(
                        verticalPadding: 5,
                        radius: 5,
                        color: Get.find<FollowManager>().isFollow!.value
                            ? AppColors.purple01
                            : AppColors.darkPink,
                        content: Get.find<FollowManager>().isFollow!.value
                            ? Localy.of(context)!.followingLabel
                            : Localy.of(context)!.labelFollowButton,
                        action: () {
                          if (Get.find<FollowManager>().isFollow!.value) {
                            showConfirmDialog(
                                context: context,
                                action: () => Get.find<FollowManager>()
                                    .onFollowChange(following: false),
                                message: '${userName}'
                                    '${unfollowConfirmMessage}',
                                positiveLabel:
                                    Localy.of(context)!.labelUnfollowAccept);
                          } else {
                            Get.find<FollowManager>()
                                .onFollowChange(following: true);
                          }
                        },
                        textStyle: AppStyles.typeTextNormal(
                            color: AppColors.white, size: 12)))),
              ),
      );
    });
  }

  Future _showPickerImageDialog(BuildContext context, String changeType) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CommonProfileScreen().buildPickerImageItem(
                  Localy.of(context)!.labelSelectPhotoMenu, Icons.photo,
                  textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
                  onPressed: () {
                controller
                    .onTakeImage(
                      context,
                      ImageSource.gallery,
                      changeType,
                    )
                    .then((value) => showDialog(
                        context: controller.context!,
                        builder: (contextDialog) {
                          return Stack(
                            children: [
                              Center(
                                child: buildImage(changeType),
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
              }, profileViewModel: profileViewModel),
              Divider(height: 1, color: AppColors.greyDark),
              CommonProfileScreen().buildPickerImageItem(
                  Localy.of(context)!.labelTakePhotoMenu, Icons.photo_camera,
                  textStyle: AppStyles.typeTextNormal(color: AppColors.blue),
                  onPressed: () {
                controller
                    .onTakeImage(context, ImageSource.camera, changeType)
                    .then((value) => showDialog(
                        context: controller.context!,
                        builder: (contextDialog) {
                          return Stack(
                            children: [
                              Center(
                                child: buildImage(changeType),
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
              Column(
                children: [
                  Divider(height: 1, color: AppColors.greyDark),
                  CommonProfileScreen().buildPickerImageItem(
                      Localy.of(context)!.labelDeletePhotoMenu, Icons.delete,
                      textStyle: AppStyles.typeTextNormal(color: AppColors.red),
                      onPressed: () {
                    controller.deleteImage(changeType);
                  }),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget buildImage(String changeType) {
    return GetBuilder<UserInformationViewModel>(
        init: Get.find<UserInformationViewModel>(),
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
                cropAspectRatio: changeType == CHANGE_AVATAR
                    ? AVATAR_CROP_ASPECT
                    : COVER_IMAGE_CROP_ASPECT,
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
