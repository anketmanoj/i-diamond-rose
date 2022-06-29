import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/account_repository/account_repository.dart';
import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/account_entity/account_entity.dart';
import 'package:diamon_rose_app/domain/entities/enum/edit_video_type.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_block_user_model.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_video_detail_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_total_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_profile_entity.dart';
import 'package:diamon_rose_app/domain/entities/wk_video_entity/my_draft_video_entity.dart';
import 'package:diamon_rose_app/domain/fcm/firebase_cloud_messaging_handler.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_bar_profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_item/card_item/card_item_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/tab_bar_profile/tab_item/tab_item_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/utils/follow_manager.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';

class ProfileViewModel extends GetxController
    with WidgetsBindingObserver, SingleGetTickerProviderMixin, StateMixin {
      
  final context = Get.context;
  dynamic arguments = Get.arguments;
  HomeViewModel? mainPresenter;
  RxInt currentIndex = 0.obs;
  List<VideoProfileEntity?> listVideo = [];
  Rx<AccountEntity> account = AppData().dummyAccount.obs;
  TextEditingController? textController;
  HomeViewModel? homeViewModel;
  Rx<LoadingState> _isLoading = LoadingState.init.obs;
  Rx<UserContentModel?> userContentModel = Rx(UserContentModel());
  Rx<UserTotalContentModel?> userTotalContentModel =
      Rx(UserTotalContentModel());
  RxString uidLocal = ''.obs;
  RxInt localUserId = 0.obs;
  String uidUserFromHome = "";
  RxInt? localUserIdFromHome;
  RxInt? userId;
  RxBool isUser = true.obs;
  Rx<String> avatar = "".obs;
  Rx<String> coverImage = "".obs;
  int scrollPosition = 0;
  BuildContext? contextWidget = Get.context;
  int totalTab = 2;
  RxInt totalElements = 0.obs;
  RxBool isGoToVideoDetail = false.obs;
  FollowManager? followManager;
  UserInformationViewModel? userInformationViewModel;
  TabBarProfileViewModel? tabBarProfileViewModel;
  TabItemViewModel? tabItemViewModel;
  CardItemViewModel? cardItemViewModel;
  VideoCache videoCache = VideoCache();

  bool get isLocalUser {
    if (arguments == null ||
        (uidUserFromHome != "" && arguments[0] == uidUserFromHome)) {
      totalTab = 2;
      return true;
    }
    totalTab = 2;
    return false;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    homeViewModel = Get.find<HomeViewModel>();

    if (arguments != null && arguments[0] != null && arguments[1] != null) {
      uidLocal.value = arguments[0];
      localUserId.value = int.parse(arguments[1]);
      userId = int.parse(arguments[1]).obs;
    } else {
      uidLocal = homeViewModel!.localUid;
      localUserId = homeViewModel!.localUserId;
    }

    await getUserInfo();
    putController();
    initController();
    textController =
        new TextEditingController(text: userContentModel.value!.selfIntroduce);
    update();
  }

  dynamic changeAgrument({String? uid, int? userId, bool isNull = false}) {
    arguments = isNull ? null : ["${uid}", "${userId}", "${userId}"];
    deleteController();
    onInit();
    change(arguments, status: RxStatus.loading());
    update();
    return arguments!;
  }

  void putController() {
    Get
      ..put(FollowManager(), tag: "$FOLLOWER_TAG/$uidLocal")
      ..put(UserInformationViewModel(), tag: "$USER_INFORMATION_TAG/$uidLocal")
      ..put(TabBarProfileViewModel(), tag: "$TAB_BAR_PROFILE_TAG/$uidLocal")
      ..put(TabItemViewModel(), tag: "$TAB_ITEM_PROFILE_TAG/$uidLocal")
      ..put(CardItemViewModel(), tag: "$CARD_ITEM_PROFILE_TAG/$uidLocal");
  }

  void initController() {
    followManager = Get.find<FollowManager>(tag: "$FOLLOWER_TAG/$uidLocal");
    userInformationViewModel = Get.find<UserInformationViewModel>(
        tag: "$USER_INFORMATION_TAG/$uidLocal");
    tabBarProfileViewModel =
        Get.find<TabBarProfileViewModel>(tag: "$TAB_BAR_PROFILE_TAG/$uidLocal");
    tabItemViewModel =
        Get.find<TabItemViewModel>(tag: "$TAB_ITEM_PROFILE_TAG/$uidLocal");
    cardItemViewModel =
        Get.find<CardItemViewModel>(tag: "$CARD_ITEM_PROFILE_TAG/$uidLocal");
    update();
  }

  void deleteController() {
    Get
      ..delete<FollowManager>(tag: "$FOLLOWER_TAG/$uidLocal")
      ..delete<UserInformationViewModel>(tag: "$USER_INFORMATION_TAG/$uidLocal")
      ..delete<TabBarProfileViewModel>(tag: "$TAB_BAR_PROFILE_TAG/$uidLocal")
      ..delete<TabItemViewModel>(tag: "$TAB_ITEM_PROFILE_TAG/$uidLocal")
      ..delete<CardItemViewModel>(tag: "$CARD_ITEM_PROFILE_TAG/$uidLocal")
      ..delete<ProfileViewModel>(tag: "$PROFILE_TAG/$uidLocal");
  }

  @override
  void onClose() {
    deleteController();
    super.onClose();
  }

  LoadingState get getLoading => _isLoading.value;

  void stateIsLoading() {
    _isLoading = LoadingState.loading.obs;
    change(_isLoading, status: RxStatus.loading());
    update();
  }

  void stateIsSuccess() {
    _isLoading = LoadingState.none.obs;
    change(_isLoading, status: RxStatus.success());
    update();
  }

  void logout() {
    AuthRepository.instance.requestSignOut(
      onStart: () {
        showLoading();
      },
      onSuccess: () async {
        await FirebaseCloudMessagingHandler.deleteDeviceToken();
        await dismissLoading();
        await Get.offAllNamed(ROUTER_CHOOSE_MODE_PAGE);
      },
      onError: (error) {
        dismissLoading();
        showErrorConfirmDialog(context: context!, errors: error);
      },
    );
  }

  Future<void> getUserInfo() async {
    final getAccountInfo = await AccountRepository.instance.accountInfo();
    uidUserFromHome = UserContentModel.fromJson(getAccountInfo).uid!;
  }

  void goToVideoDetail(int videoId) {
    isGoToVideoDetail = true.obs;

    goTo(
        screen: ROUTER_VIDEO_DETAIL,
        argument: RequestVideoDetailModel(videoId: videoId),
        preventDuplicates: false);
  }

  Future<void> onNavigateEditVideo(MyDraftVideoEntity videoItem) async {
    if (videoItem.id == -1) {
      await showSnackBar(
          message: Localy.of(Get.context!)!.labelCanNotEdit,
          snackBarType: SnackBarType.danger);
      return;
    }
    final agr = {'TYPE': EditVideoType.updateVideo, 'DATA': videoItem};
    await Get.toNamed(ROUTER_EDIT_VIDEO, arguments: agr)?.then((isUpdated) {});
  }

  void blockUser() {
    showConfirmDialog(
      context: context!,
      action: callBlockUser,
      message:
          "${Get.find<UserInformationViewModel>().userContentModel!.displayName}"
          " ${Localy.of(context!)!.titleBlockUser}",
      textAlign: TextAlign.center,
    );
  }

  void callBlockUser() {
    UserRepository.instance.blockUser(
        requestBlockUserEntity:
            RequestBlockUserModel(blockUserId: userId!.value),
        onStart: () {
          showLoading();
        },
        onSuccess: (data) async {
          await dismissLoading();
          await showSnackBar(
              message: data[0].toString(), snackBarType: SnackBarType.success);
          await Future.delayed(const Duration(milliseconds: 2000));
          await goToAndRemoveAll(screen: ROUTER_MAIN);
        },
        onError: (error) async {
          await dismissLoading();
          await showErrorConfirmDialog(
              textAlign: TextAlign.center, context: context!, errors: error);
        });
  }
}
