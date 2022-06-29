import 'dart:convert';
import 'dart:typed_data';

import 'package:diamon_rose_app/data/repositiory/account_repository/account_repository.dart';
import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/account_entity/account_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_social_entity_model.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_social/user_profile_social.validate.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:image_editor/image_editor.dart' as editor;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

enum Sex { male, female, others }

class UserProfileSocialViewModel extends GetxController
    with WidgetsBindingObserver {
  UserProfileInfoViewModel editInfoViewModel =
      Get.put(UserProfileInfoViewModel());
  final bool _isProfile = LocalStorageKeys.isEditProfile;
  final tiktokController = TextEditingController();
  final twitterController = TextEditingController();
  final instagramController = TextEditingController();
  final facebookController = TextEditingController();
  final introductionController = TextEditingController();
  late String uidEditProfile = "";
  final GlobalKey<ExtendedImageEditorState> editorKey = GlobalKey();
  VideoCache cacheManager = VideoCache();
  ImageProvider? provider;

  String get keyAvatar =>
      avatar.isNotEmpty ? avatar.value.substring(avatar.value.length - 3) : "";

  String CHANGE_AVATAR = 'change_avatar';
  Rx<AccountEntity> account = AppData().dummyAccount.obs;
  Rx<String> avatar = "".obs;
  Rx<String> displayName = "".obs;

  Rx<String?> tiktokError = Rx<String?>(null);
  Rx<String?> twitterError = Rx<String?>(null);
  Rx<String?> instagramError = Rx<String?>(null);
  Rx<String?> facebookError = Rx<String?>(null);

  FocusNode tiktokFocus = FocusNode();
  FocusNode twitterFocus = FocusNode();
  FocusNode instagramFocus = FocusNode();
  FocusNode facebookFocus = FocusNode();
  FocusNode introductionFocus = FocusNode();

  BuildContext? context = Get.context;

  @override
  void onInit() {
    initData();
    tiktokSubmit();
    twitterSubmit();
    facebookSubmit();
    instagramSubmit();
    super.onInit();
  }

  void deleteImage(String changeType) {
    avatar.value = '';
    update();
  }

  Future<void> onTakeImage(BuildContext context, ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final file = await _picker.pickImage(source: source);
    await updateImage(file);
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
      update();
    }
  }

  void onIntroductionChange(String value) {
    ///Todo(Implement): implement Validate introduction
  }

  Future<void> validateBeforeSubmitting(BuildContext context) async {
    final tiktokInput = tiktokController.text.trim();
    final twitterInput = twitterController.value.text.trim();
    final instagramInput = instagramController.value.text.trim();
    final facebookInput = facebookController.value.text.trim();
    final introductionInput = introductionController.value.text.trim();
    final validationResults = UserProfileSocialValidationResults(context);
    if (!validationResults.validateUrl(tiktokInput).isValid) {
      tiktokError.value =
          validationResults.validateUrl(tiktokInput).errorMessage.toString();
      update();
      return;
    }
    if (!validationResults.validateUrl(twitterInput).isValid) {
      twitterError.value =
          validationResults.validateUrl(twitterInput).errorMessage.toString();
      update();
      return;
    }
    if (!validationResults.validateUrl(instagramInput).isValid) {
      instagramError.value =
          validationResults.validateUrl(instagramInput).errorMessage.toString();
      update();
      return;
    }
    if (!validationResults.validateUrl(facebookInput).isValid) {
      facebookError.value =
          validationResults.validateUrl(facebookInput).errorMessage.toString();
      update();
      return;
    }
    handleClearErrorForm();

    final newUserContent = UserSocialModel(
        tiktokUrl: tiktokInput,
        instagramUrl: instagramInput,
        facebookUrl: facebookInput,
        twitterUrl: twitterInput,
        selfIntroduce: introductionInput);
    UserRepository.instance.requestUpdateSocialInfoUser(
        uid: _isProfile
            ? uidEditProfile
            : editInfoViewModel.userContentModel.value!.uid.toString(),
        requestUserModel: newUserContent,
        onStart: () {
          showLoading();
        },
        onSuccess: (response) async {
          if (_isProfile) {
            final UserInformationViewModel profileViewModel =
                Get.find<UserInformationViewModel>();
            await AccountRepository.instance.saveAccountInfo(
                response.item.copyWith(userId: response.item.id));
            profileViewModel.userContentModel = await response.item;
            profileViewModel.bio.value = response.item.selfIntroduce!;
            profileViewModel.textBioController!.text =
                response.item.selfIntroduce!;
            profileViewModel.refresh();
            update();
          } else {
            await AccountRepository.instance.saveAccountInfo(response.item);
          }
          await dismissLoading();
          await showSnackBar(
              message: _isProfile
                  ? Localy.of(context)!.updateSuccessful
                  : Localy.of(context)!.successSignUpMessage,
              snackBarType: SnackBarType.success);
          await Future.delayed(Duration(seconds: 2));
          if (_isProfile) {
            goBack();
          } else {
            await goToAndRemoveAll(screen: ROUTER_MAIN);
          }
        },
        reLoginCallBack: (reLogin) {
          dismissLoading();
        },
        onError: (error) async {
          await dismissLoading();
          await showSnackBar(
              message: error.toString(), snackBarType: SnackBarType.warning);
        });

    update();
  }

  void handleClearErrorForm() {
    tiktokError.value = null;
    twitterError.value = null;
    instagramError.value = null;
    facebookError.value = null;
  }

  Future<void> uploadAvatar(String filePath) async {
    await UserRepository.instance.requestUploadImage(
        filePath: filePath,
        uid: _isProfile
            ? uidEditProfile
            : editInfoViewModel.userContentModel.value!.uid.toString(),
        onStart: () async {
          await showLoading();
          await cacheManager.deleteImageFromCache(
              url: avatar.value,
              key:
                  "$AVATAR_KEY${_isProfile ? uidEditProfile : editInfoViewModel.userContentModel.value!.uid.toString()}");
        },
        onSuccess: (response) async {
          provider = null;

          avatar.value = await response.url;
          await cacheManager
              .putFile(
                  url: avatar.value,
                  key:
                      "$AVATAR_KEY${_isProfile ? uidEditProfile : editInfoViewModel.userContentModel.value!.uid.toString()}$keyAvatar")
              .whenComplete(() async {
            if (_isProfile) {
              Get.find<UserInformationViewModel>().avatar.value = avatar.value;
              Get.find<UserInformationViewModel>().refresh();
              update();
            }
            await dismissLoading();
          });
          await AccountRepository.instance.saveAccountInfo(editInfoViewModel
              .userContentModel.value!
              .copyWith(avatar: response.url));
        },
        onError: (error) {
          dismissLoading();
        },
        type: CHANGE_AVATAR);
  }

  Future<void> deleteAvatar() async {
    await showConfirmDialog(
        context: context!,
        action: () {
          UserRepository.instance.requestDeleteImage(
            uid: _isProfile
                ? uidEditProfile
                : editInfoViewModel.userContentModel.value!.uid.toString(),
            onStart: () {
              showLoading();
            },
            onSuccess: (response) async {
              await cacheManager
                  .deleteImageFromCache(
                      url: avatar.value,
                      key:
                          "$AVATAR_KEY${_isProfile ? uidEditProfile : editInfoViewModel.userContentModel.value!.uid.toString()}$keyAvatar")
                  .whenComplete(() async {
                avatar.value = '';
                if (_isProfile) {
                  Get.find<UserInformationViewModel>().avatar.value = "";
                }
                await dismissLoading();
                await AccountRepository.instance.saveAccountInfo(
                    editInfoViewModel.userContentModel.value!
                        .copyWith(avatar: ""));
                goBack();
                await showSnackBar(
                    message: Localy.of(context!)!.updateSuccessful,
                    snackBarType: SnackBarType.success);
              });
              update();
              await dismissLoading();
            },
            onError: (List<String> response) async {
              await dismissLoading();
            },
            type: CHANGE_AVATAR,
          );
        },
        message: Localy.of(context!)!.labelDefaultDelete);
  }

  void onSubmit(
      {required FocusNode focusNode,
      required String input,
      required Rx<String?> error}) {
    final inputText = input.trim();
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        final validationResults = UserProfileSocialValidationResults(context!);
        if (!validationResults.validateUrl(inputText).isValid) {
          error.value =
              validationResults.validateUrl(inputText).errorMessage.toString();
          update();
          return;
        }
        error.value = null;
        update();
      }
    });
  }

  void tiktokSubmit() {
    onSubmit(
        focusNode: tiktokFocus,
        input: tiktokController.text,
        error: tiktokError);
  }

  void twitterSubmit() {
    onSubmit(
        focusNode: twitterFocus,
        input: twitterController.text,
        error: twitterError);
  }

  void instagramSubmit() {
    onSubmit(
        focusNode: instagramFocus,
        input: instagramController.text,
        error: instagramError);
  }

  void facebookSubmit() {
    onSubmit(
        focusNode: facebookFocus,
        input: facebookController.text,
        error: facebookError);
  }

  Future<void> initData() async {
    final getUserInfo = await AccountRepository.instance.accountInfo();
    final UserContentModel userContent = UserContentModel.fromJson(getUserInfo);
    if (_isProfile) {
      avatar.value = userContent.avatar ?? "";
      tiktokController.text = userContent.tiktokUrl ?? "";
      twitterController.text = userContent.twitterUrl ?? "";
      instagramController.text = userContent.instagramUrl ?? "";
      facebookController.text = userContent.facebookUrl ?? "";
      introductionController.text = userContent.selfIntroduce ?? "";
      uidEditProfile = userContent.uid.toString();
    }
    displayName.value = userContent.displayName ?? "";
    update();
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
    // final img = await getImageFromEditorKey(editorKey);
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

    final File file = await File('${tempDir.path}$PATH_AVATAR').create();
    file.writeAsBytesSync(result);

    await uploadAvatar(file.path);
    update();
  }
}
