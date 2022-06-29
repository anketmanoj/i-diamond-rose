import 'package:diamon_rose_app/data/repositiory/like_repository/like_repository.dart';
import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/event_video_request/event_video_model.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/home/video_card/video_card_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/value/video_settings_widget_details.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ActionsToolbarViewModel extends GetxController {
  ActionsToolbarViewModel({required this.videoEntity}) {}

  VideoEntity? videoEntity;
  late RxInt totalFavotite = 0.obs;
  late RxInt totalLike = 0.obs;
  late RxInt totalComment = 0.obs;
  late RxBool isLiked = false.obs;
  late RxBool isFavorited = false.obs;
  BuildContext context = Get.put(HomeViewModel()).context!;

  RxString get favoriteIcon => !isFavorited.value
      ? "${PNG_URL}favorite.png".obs
      : "${PNG_URL}favorited.png".obs;
  RxBool permitToBuy = true.obs;

  RxString get likeIcon =>
      !isLiked.value ? "${PNG_URL}like.png".obs : "${PNG_URL}liked.png".obs;

  Future<Map<String, dynamic>> getInfoVideo({VideoEntity? item}) async {
    if (item != null) {
      videoEntity = item;
    }

    return VideoRepository.instance.getVideoInfo(
      videoEntity!.videoDTO!.id,
      videoEntity: videoEntity,
    );
  }

  void checkPermitToBuy() {
    if (Get.find<VideoCardViewModel>().isLocalUser ||
        videoEntity!.videoSettingDTO!.videoType != (VideoType.PAID.index + 1)) {
      permitToBuy = false.obs;
    } else {
      permitToBuy = true.obs;
    }
    update();
  }

  void initForVideo({VideoEntity? item}) {
    getInfoVideo(item: item).then((videoInfo) {
      checkPermitToBuy();
      if (videoInfo.isNotEmpty) {
        totalFavotite.value = videoInfo[TOTAL_FAVORITE];
        totalLike.value = videoInfo[TOTAL_LIKE];
        totalComment.value = videoInfo[TOTAL_COMMENT];
        isLiked.value = videoInfo[IS_LIKE] ?? false;
        isFavorited.value = videoInfo[IS_FAVORITE] ?? false;
      } else {
        totalFavotite = item!.totalFavorite.obs;
        totalLike = item.totalLike.obs;
        totalComment = item.totalComment.obs;
        isLiked = item.isLike!.obs;
        isFavorited = item.isFavorite!.obs;
      }
    });
  }

  RxInt eventChangeTotalFavorite() {
    switch (isFavorited.value) {
      case true:
        return totalFavotite++;
      case false:
        return totalFavotite--;
      default:
        return totalFavotite;
    }
  }

  RxInt eventChangeTotalLike() {
    switch (isLiked.value) {
      case true:
        totalLike++;
        return totalLike;
      case false:
        totalLike--;
        return totalLike;
      default:
        return totalLike;
    }
  }

  void likeEvent() {
    isLiked.toggle();
    totalLike = eventChangeTotalLike();

    LikeRepository.instance.requestLikeVideo(
        isLiked: isLiked.value,
        eventVideoModel: EventVideoModel(id: videoEntity!.videoDTO!.id),
        onStart: () {
          update();
        },
        onSuccess: (response) async {
          update();
          await VideoRepository.instance.saveVideoInfo(
              videoEntity: videoEntity,
              totalLike: totalLike.value,
              isLike: isLiked.value,
              isFavorite: isFavorited.value,
              totalComment: totalComment.value,
              totalFavorite: totalFavotite.value);
        },
        onError: (errors) {
          showErrorConfirmDialog(context: context, errors: errors);
        });
  }

  void favoriteEvent() {
    isFavorited.toggle();
    totalFavotite = eventChangeTotalFavorite();

    LikeRepository.instance.requestFavoriteVideo(
        isFavorite: isFavorited.value,
        eventVideoModel: EventVideoModel(id: videoEntity!.videoDTO!.id),
        onStart: () {},
        onSuccess: (response) async {
          await VideoRepository.instance.saveVideoInfo(
              videoEntity: videoEntity,
              totalLike: totalLike.value,
              isLike: isLiked.value,
              isFavorite: isFavorited.value,
              totalFavorite: totalFavotite.value);
        },
        onError: (errors) {
          showErrorConfirmDialog(context: context, errors: errors);
        });
    update();
  }
}
