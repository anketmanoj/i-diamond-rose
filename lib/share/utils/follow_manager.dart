import 'dart:async';

import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_follow_user_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FollowManager extends GetxController {

  RxBool? isFollow = false.obs;
  RxInt? numberFollow = 0.obs;
  RxInt? userId = 0.obs;
  BuildContext? context;
  RxBool isLocalUser = false.obs;
  RxString? uid = ''.obs;

  void eventChangeTotalFollow({bool? isFollow = null}) {
    if (isFollow == false) {
      numberFollow = numberFollow! - 1;
    } else {
      numberFollow = numberFollow! + 1;
    }
  }

  void getFollowManager(
      {BuildContext? context,
      bool? isFollowed = false,
      int? totalFollower = 0,
      int? userId = 0,
      String? uid = ""}) {

    isFollow = isFollowed!.obs;
    numberFollow = totalFollower!.obs;
    this.userId = userId!.obs;
    this.context = context;
    this.uid = uid!.obs;
    update();
  }

  Future<void> checkIsLocalUser(int userId) async {
    final localUserId = Get.find<HomeViewModel>().localUserId;
    if (userId == localUserId) {
      isLocalUser = true.obs;
      update();
    }
  }

  void onFollowChange({
    bool following = true,
  }) {
    isFollow = following.obs;
    eventChangeTotalFollow(isFollow: following);
    update();
    UserRepository.instance.requestHandleFollow(
        isFollowing: following,
        requestFollowUserModel: RequestFollowUserModel(id: this.userId!.value),
        onStart: () {
          isFollow!.refresh();
        },
        reLoginCallBack: (response) {
          dismissLoading();
        },
        onSuccess: (onSuccess) async {
          if (following == true) {
            unawaited(showSnackBar(
                message: onSuccess[0].toString(),
                snackBarType: SnackBarType.success));
          }
          await VideoRepository.instance
              .saveFollowInfo(this.userId!.value, isSubscribe: following);
          update();
        },
        onError: (onError) {
          showErrorConfirmDialog(context: context!, errors: onError);
        });
    update();
  }
}
