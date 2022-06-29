import 'dart:convert';

import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/local_storage/account_local_storage/account_local_storage.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowViewModel extends GetxController
    with WidgetsBindingObserver, SingleGetTickerProviderMixin {
  late TabController tabController;
  int initNumOfTab = 0;
  final context = Get.context;
  RxList<UserContentModel?> followingList = RxList<UserContentModel>();

  RxList<UserContentModel?> followerList = RxList<UserContentModel>();

  RxList<UserContentModel?> followingListTemp = RxList<UserContentModel>();

  TextEditingController searchFollowingController =
      TextEditingController(text: "");
  TextEditingController searchFollowerController =
      TextEditingController(text: "");
  late final _uid;
  final _keySearch = "keywordSearch";

  Rx<bool> isSearchFollowing = false.obs;
  Rx<bool> isSearchFollower = false.obs;
  Rx<bool> isSearching = false.obs;

  @override
  Future<void> onInit() async {
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    initNumOfTab = 0;

    _uid = await getUid();
    _initController(_uid);
    await getListFollowing(_uid);

    super.onInit();
  }

  void _initController(num uid) {
    tabController.addListener(() {
      switch (tabController.index) {
        case 0:
          break;
        case 1:
          if (initNumOfTab == 0) {
            getListFollowers(uid);
          }
          initNumOfTab++;
          break;
        default:
          break;
      }
    });
  }

  void unFollow(int index) {
    final UserContentModel userFromIndex =
        followingList.elementAt(index) ?? UserContentModel();
    UserRepository.instance.unFollow(
        uid: userFromIndex.id,
        onStart: () {
          showLoading();
        },
        onSuccess: (data) async {
          followingList.removeAt(index);
          followingListTemp.removeAt(index);
          if (followingListTemp.length == 0) {
            isSearchFollowing.value = false;
          }
          await dismissLoading();
        },
        onError: (error) async {
          await dismissLoading();
          await showErrorConfirmDialog(context: context!, errors: error);
        },
        reLoginCallBack: (_) async {
          await dismissLoading();
        });
  }

  Future<num> getUid() async {
    final userInfo = await AccountLocalStorage.getAccountInfo();
    final data = json.decode(userInfo);
    return num.parse(data["uid"]);
  }

  Future<void> getListFollowing(num uid, {Map<String, dynamic>? param}) async {
    UserRepository.instance.getFollowing(
        uid: uid,
        requestParam: param,
        onStart: () {
          if (!isSearching.value) {
            showLoading();
          }
        },
        onSuccess: (data) async {
          followingList.value = data.items;
          if (!isSearching.value) {
            await dismissLoading();
            followingListTemp.addAll(followingList);
          } else {}

          if (followingList.isNotEmpty) {
            isSearchFollowing.value = true;
          }
        },
        onError: (error) async {
          if (!isSearching.value) {
            await dismissLoading();
          }
          await showErrorConfirmDialog(context: context!, errors: error);
        });
  }

  Future<void> getListFollowers(num uid, {Map<String, dynamic>? param}) async {
    UserRepository.instance.getFollowers(
        uid: _uid,
        requestParam: param,
        onStart: () {
          if (!isSearching.value) {
            showLoading();
          }
        },
        onSuccess: (data) async {
          if (!isSearching.value) {
            await dismissLoading();
          }
          followerList.value = data.items;
          if (followerList.isNotEmpty) {
            isSearchFollower.value = true;
          }
        },
        onError: (error) async {
          if (!isSearching.value) {
            await dismissLoading();
          }
          await showErrorConfirmDialog(context: context!, errors: error);
        });
  }

  Future<void> onChangeSearchFieldFollowing(String text) async {
    isSearching.value = true;
    final param = Map<String, dynamic>();
    final textSearchTrim = text.trim();
    param[_keySearch] = textSearchTrim;
    await getListFollowing(_uid, param: param);
  }

  Future<void> onChangeSearchFieldFollowers(String text) async {
    isSearching.value = true;
    final param = Map<String, dynamic>();
    final textSearchTrim = text.trim();
    param[_keySearch] = textSearchTrim;
    await getListFollowers(_uid, param: param);
  }

  void moveToProfile(String uid, int id) {
    Get.find<ProfileViewModel>().changeAgrument(uid: uid, userId: id);
    goTo(
        screen: ROUTER_PROFILE,
        preventDuplicates: false,
        argument: ["$uid", "$id", "$id"]);
  }
}
