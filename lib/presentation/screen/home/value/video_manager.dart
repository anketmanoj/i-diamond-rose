import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_get_list_video_model.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_entity/video_following_entity.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class VideoManager extends GetxController {
  int _paidScrollPosition = 0;
  int _numLoad = 1;
  int typeVideo = 3;

  int get paidScrollPosition => _paidScrollPosition;

  int get numLoad => _numLoad;
  late List<VideoEntity?> listVideosRecommend = [];
  late List<VideoFollowingEntity?> listVideosFollowing = [];

  bool isChangeTab = false;

  void changeTab() {
    if (isChangeTab == true) {
      _paidScrollPosition = 0;
      _numLoad = 1;
      isChangeTab = false;
    }
  }

  Future<void> loadVideoRecommend(
      {bool isRefresh = false, bool? isFirst}) async {
    VideoRepository.instance.requestListVideo(
      isFirst: isFirst!,
      requestGetListVideoModel: RequestGetListVideoModel(
          type: typeVideo,
          userId: null,
          page: paidScrollPosition,
          size: numLoad),
      onStart: () {},
      onSuccess: (response) {
        listVideosRecommend = response.items;
        update();
      },
      onError: (error) {
        print(error.first);
      },
    );
  }
}
