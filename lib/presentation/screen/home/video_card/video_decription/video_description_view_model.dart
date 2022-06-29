import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/follow_manager.dart';
import 'package:get/get.dart';

class VideoDescriptionViewModel extends GetxController {
  VideoDescriptionViewModel({required this.videoEntity});

  late VideoEntity videoEntity;
  late bool isLocalUser;
  late int localUserId;
  bool isFollowingUser = false;
  FollowManager? followManager = Get.put(FollowManager());

  @override
  Future<void> onInit() async {
    super.onInit();
    await getInformation();
  }

  Future<void> eventChangeFollow({VideoEntity? item}) async {
    if (item != null) {
      videoEntity = item;
    }
    isFollowingUser = !isFollowingUser;
    Get
      ..find<FollowManager>().getFollowManager(
          isFollowed: isFollowingUser,
          uid: videoEntity.uid,
          userId: videoEntity.userId)
      ..find<FollowManager>().onFollowChange(following: isFollowingUser);
    update();
  }

  Future<void> getInformation({VideoEntity? item}) async {
    if (item != null) {
      videoEntity = item;
    }
    localUserId = Get.find<HomeViewModel>().localUserId.value;
    isLocalUser = false;
    if (localUserId == videoEntity.userId) {
      isLocalUser = true;
    }

    final followInfo = await VideoRepository.instance.getFollowUser(
      videoEntity.userId!,
      videoEntity: videoEntity,
    );

    if (followInfo.isNotEmpty) {
      isFollowingUser = followInfo[IS_SUBSCRIBE] ?? false;
    } else {
      isFollowingUser = videoEntity.isSubscribe!;
    }
    Get
      ..find<FollowManager>().getFollowManager(
          isFollowed: isFollowingUser,
          uid: videoEntity.uid,
          userId: videoEntity.userId);
  }

  void changeFollowFromProfile(RxBool follow) {
    isFollowingUser = follow.value;
    update();
  }

  Future<void> followEvent() async {
    await VideoRepository.instance.saveFollowInfo(
      videoEntity.userId!,
      isSubscribe: isFollowingUser,
    );
  }
}
