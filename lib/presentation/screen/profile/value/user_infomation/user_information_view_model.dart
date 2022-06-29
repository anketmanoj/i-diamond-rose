import 'dart:convert';
import 'dart:typed_data';

import 'package:diamon_rose_app/data/repositiory/account_repository/account_repository.dart';
import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_get_user_info_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_social_entity_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_total_content_entity.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_decription/video_description_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/utils/follow_manager.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_editor/image_editor.dart' as editor;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class UserInformationViewModel extends GetxController with StateMixin {
  bool? isLocalUser;
  RxString uidLocal = "".obs;
  TextEditingController? textBioController;
  UserTotalContentModel? userTotalContentModel;
  UserContentModel? userContentModel;
  RxString avatar = "".obs;
  RxString coverImage = "".obs;
  RxString bio = "".obs;

  String get keyCoverImage => coverImage.isNotEmpty
      ? coverImage.value.substring(coverImage.value.length - 3)
      : "";

  String get keyAvatar =>
      avatar.isNotEmpty ? avatar.value.substring(avatar.value.length - 3) : "";
  RxBool isFollow = false.obs;
  Map<String, String>? header;
  BuildContext? profileContext;
  RxBool isUpdateIntroduce = false.obs;
  VideoCache cacheManager = VideoCache();
  FollowManager? followManager = Get.put(FollowManager());
  final GlobalKey<ExtendedImageEditorState> editorKey = GlobalKey();
  ImageProvider? provider;
  BuildContext? context;

  RxInt? get totalFollower =>
      followManager != null ? followManager!.numberFollow! : 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    isLocalUser = Get.find<ProfileViewModel>().isLocalUser;
    uidLocal = Get.find<ProfileViewModel>().uidLocal;
    profileContext = Get.find<ProfileViewModel>().contextWidget;
    textBioController = TextEditingController();
    isFollow = Get.find<FollowManager>().isFollow!;
    header = await HttpRequest.httpConfig!.concatHeaderProxy();
    context = Get.find<ProfileViewModel>().context;

    await getUserInfo();

    update();
  }

  void initFollowerController() {
    Get.find<FollowManager>(tag: "$FOLLOWER_TAG/$uidLocal").getFollowManager(
        isFollowed: userTotalContentModel!.isSubscribe != null
            ? userTotalContentModel!.isSubscribe
            : false,
        uid: userContentModel!.uid,
        userId: Get.find<ProfileViewModel>().localUserId.value,
        totalFollower: userTotalContentModel!.totalFollower);
    followManager = Get.find<FollowManager>(tag: "$FOLLOWER_TAG/$uidLocal");
    update();
  }

  void errorDialog(List<String> error) {
    if (error.first.contains(BAD_CREDENTIALS)) {
      showErrorConfirmDialog(
          textAlign: TextAlign.center,
          context: profileContext!,
          errors: [Localy.of(profileContext!)!.authenticationErrorText]);
    }
  }

  Future<void> getUserInfo() async {
    Get.find<ProfileViewModel>().stateIsSuccess();
    if (!isLocalUser!) {
      UserRepository.instance.requestGetUserInfo(
          requestGetUserInfoModel: RequestGetUserInfoModel(uid: uidLocal.value),
          onStart: () {},
          onSuccess: (response) async {
            ImageCache().clear();
            userTotalContentModel = response.item;
            userContentModel = response.item.userInfo;
            initFollowerController();
            change(userContentModel!.displayName, status: RxStatus.success());
            avatar.value = userContentModel!.avatar!;
            coverImage.value = userContentModel!.coverUrl ?? "";
            bio.value = userContentModel!.selfIntroduce ?? "";
            if (coverImage.value != "" && coverImage.isNotEmpty) {
              await cacheManager.initVideoToCache(
                  isUpdate: true,
                  url: userContentModel!.coverUrl,
                  key:
                      "$COVER_IMAGE_KEY${userContentModel!.uid}$keyCoverImage");
            }
            textBioController!.text = userContentModel!.selfIntroduce != null
                ? userContentModel!.selfIntroduce!
                : "";

            update();
          },
          onError: errorDialog);
    } else {
      final getAccountInfo = await AccountRepository.instance.accountInfo();
      userContentModel = UserContentModel.fromJson(getAccountInfo);
      bio.value = userContentModel!.selfIntroduce ?? "";
      UserRepository.instance.requestFollowIngUserDetail(
          requestGetUserInfoModel: RequestGetUserInfoModel(uid: uidLocal.value),
          onStart: () {
            update();
          },
          onSuccess: (response) async {
            ImageCache().clear();
            userTotalContentModel = response.item;
            initFollowerController();
            avatar.value = userTotalContentModel!.avatarUrl!;
            coverImage.value = userContentModel!.coverUrl ?? "";
            change(userContentModel!.displayName, status: RxStatus.success());
            textBioController!.text =
                userContentModel!.selfIntroduce!.isNotEmpty
                    ? userContentModel!.selfIntroduce!
                    : "";
            await cacheManager.initVideoToCache(
              url: userContentModel!.avatar,
            );

            if (userContentModel!.coverUrl != null &&
                userContentModel!.coverUrl != "") {
              coverImage.value = userContentModel!.coverUrl ?? "";
              await cacheManager.initVideoToCache(
                  url: userContentModel!.coverUrl,
                  key:
                      "$COVER_IMAGE_KEY${userContentModel!.uid}$keyCoverImage");
            }
            update();
          },
          onError: errorDialog);
    }
    update();
  }

  Future<void> updateFollowWillPop() async {
    Get.find<VideoDescriptionViewModel>().changeFollowFromProfile(isFollow);
    update();
  }

  void deleteImage(String changeType) {
    showConfirmDialog(
        context: context!,
        action: () {
          UserRepository.instance.requestDeleteImage(
            onStart: () {
              showLoading();
            },
            uid: uidLocal.value,
            onSuccess: (response) async {
              if (changeType == CHANGE_AVATAR) {
                await cacheManager
                    .deleteImageFromCache(
                        url: avatar.value,
                        key: "$AVATAR_KEY${userContentModel!.uid}$keyAvatar")
                    .whenComplete(() async {
                  avatar.value = '';
                  await dismissLoading();
                  await AccountRepository.instance
                      .saveAccountInfo(userContentModel!.copyWith(avatar: ""));
                });
              } else {
                await cacheManager
                    .deleteImageFromCache(
                        url: avatar.value,
                        key: "$COVER_IMAGE_KEY" +
                            "${userContentModel!.uid}"
                                "$keyCoverImage")
                    .whenComplete(() async {
                  coverImage.value = '';
                  await dismissLoading();
                  await AccountRepository.instance.saveAccountInfo(
                      userContentModel!.copyWith(coverUrl: ""));
                });
              }
              update();
              goBack();
              await showSnackBar(
                  message: Localy.of(context!)!.updateSuccessful,
                  snackBarType: SnackBarType.success);
            },
            onError: (List<String> response) {},
            type: changeType,
          );
        },
        message: Localy.of(context!)!.labelDefaultDelete);
    update();
  }

  Future<void> onTakeImage(
      BuildContext context, ImageSource source, String changeType) async {
    final ImagePicker _picker = ImagePicker();
    final file = await _picker.pickImage(source: source);
    await updateImage(file);
  }

  void uploadImage(String filePath, String type) {
    UserRepository.instance.requestUploadImage(
        filePath: filePath,
        uid: userContentModel!.uid.toString(),
        onStart: () async {
          await showLoading();
          if (type == CHANGE_AVATAR) {
            await cacheManager.deleteImageFromCache(
                url: avatar.value,
                key: "$AVATAR_KEY${userContentModel!.uid}${keyAvatar}");
          } else {
            await cacheManager.deleteImageFromCache(
                url: coverImage.value,
                key: "$COVER_IMAGE_KEY" +
                    "${userContentModel!.uid}"
                        "${keyCoverImage}");
          }
        },
        onSuccess: (response) async {
          await showSnackBar(
              message: Localy.of(context!)!.updateSuccessful,
              snackBarType: SnackBarType.success);
          print(response);

          provider = null;

          if (type == CHANGE_AVATAR) {
            avatar.value = await response.url;
            await cacheManager
                .putFile(
                    url: avatar.value,
                    key: "$AVATAR_KEY${userContentModel!.uid}$keyAvatar")
                .whenComplete(() async {
              await dismissLoading();
              change(type, status: RxStatus.success());
              update();
              goBack();
            });

            await AccountRepository.instance.saveAccountInfo(
                userContentModel!.copyWith(avatar: response.url));
          } else {
            coverImage.value = await response.url;
            await cacheManager
                .putFile(
                    url: coverImage.value,
                    key: "$COVER_IMAGE_KEY${userContentModel!.uid}" +
                        "$keyCoverImage")
                .whenComplete(() async {
              await dismissLoading();

              change(type, status: RxStatus.success());
              update();
              goBack();
            });
            await AccountRepository.instance.saveAccountInfo(
                userContentModel!.copyWith(coverUrl: response.url));
          }
        },
        onError: (error) {
          print(error.first);
          dismissLoading();
        },
        type: type);
  }

  void initImageToEdit(File? file) {
    provider = ExtendedFileImageProvider(file!, cacheRawData: true);
    update();
  }

  Future<void> crop(String type) async {
    final ExtendedImageEditorState? state = editorKey.currentState;

    if (state == null) {
      return;
    }
    final Rect? rect = state.getCropRect();
    if (rect == null) {
      return;
    }
    final EditActionDetails action = state.editAction!;
    final double radian = action.rotateAngle;

    final bool flipHorizontal = action.flipY;
    final bool flipVertical = action.flipX;
    final Uint8List img = state.rawImageData;

    if (img.isEmpty) {
      return;
    }

    final editor.ImageEditorOption option = editor.ImageEditorOption()
      ..addOption(editor.ClipOption.fromRect(rect))
      ..addOption(editor.FlipOption(
          horizontal: flipHorizontal, vertical: flipVertical));
    if (action.hasRotateAngle) {
      option.addOption(editor.RotateOption(radian.toInt()));
    }
    option
      ..addOption(editor.ColorOption.saturation(1))
      ..addOption(editor.ColorOption.brightness(1))
      ..addOption(editor.ColorOption.contrast(1))
      ..addOption(editor.ScaleOption(600, 500))
      ..outputFormat = const editor.OutputFormat.png(88);

    print(const JsonEncoder.withIndent('  ').convert(option.toJson()));

    final Uint8List? result = await editor.ImageEditor.editImage(
      image: img,
      imageEditorOption: option,
    );

    if (result == null) {
      return;
    }

    final tempDir = await getTemporaryDirectory();

    final File file = await File(
            '${tempDir.path}${type == CHANGE_AVATAR ? PATH_AVATAR : PATH_COVER}')
        .create();
    file.writeAsBytesSync(result);

    uploadImage(file.path, type);
    update();
  }

  void showPreviewDialog(File image) {
    showDialog<void>(
      context: context!,
      builder: (BuildContext ctx) => GestureDetector(
        onTap: goBack,
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          child: Center(
            child: SizedBox.fromSize(
              size: const Size.square(200),
              child: Container(
                child: Image.file(image),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateImage(XFile? file) async {
    if (file != null) {
      if (ValidateUtils.capacityIsTooBig(await file.length(), 10000)) {
        await showErrorConfirmDialog(
            context: context!,
            errors: [Localy.of(context!)!.imageCapacityTooBig]);
        return;
      }
      final File fileCover = File(file.path);
      initImageToEdit(fileCover);
    }
    update();
  }

  @override
  void onClose() {
    //tabController?.dispose();
    super.onClose();
  }

  Future<void> saveBio(String text) async {
    final requestUserModel = UserSocialModel(selfIntroduce: text);
    UserRepository.instance.requestUpdateSocialInfoUser(
        uid: uidLocal.value,
        requestUserModel: requestUserModel,
        onStart: () {
          showLoading();
        },
        reLoginCallBack: (_) {},
        onSuccess: (data) async {
          print(data.item);
          bio.value = data.item.selfIntroduce ?? "";
          await AccountRepository.instance
              .saveAccountInfo(data.item.copyWith(userId: data.item.id));
          await showSnackBar(
              message: Localy.of(context!)!.updateSuccessful,
              snackBarType: SnackBarType.success);
          await dismissLoading();
          update();
        },
        onError: (List<String> error) async {
          await showSnackBar(
              message: error[0].toString(), snackBarType: SnackBarType.warning);
          await dismissLoading();
        });
  }
}
