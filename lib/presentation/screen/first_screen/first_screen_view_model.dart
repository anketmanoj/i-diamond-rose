import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/video_request/request_get_list_video_model.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:get/get.dart';

class FirstScreenViewModel extends GetxController {
  @override
  Future<void> onInit() async {
    await loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    VideoRepository.instance.requestListVideo(
      isFirst: true,
      requestGetListVideoModel: RequestGetListVideoModel(
          type: VIDEO_TYPE_ALL,
          userId: 0,
          page: 0,
          size: MINIMUM_VIDEO_FIRST_INIT),
      onStart: () {},
      onSuccess: (response) async {
        await goToAndRemoveAll(screen: ROUTER_MAIN);
      },
      onError: (error) {
        print(error);
      },
    );
  }
}
