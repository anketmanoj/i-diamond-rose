import 'package:diamon_rose_app/presentation/screen/replay_video/replay_video_view_model.dart';
import 'package:get/get.dart';

class ReplayVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReplayVideoViewModel());
  }
}
