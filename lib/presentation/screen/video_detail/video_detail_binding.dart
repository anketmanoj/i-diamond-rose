import 'package:diamon_rose_app/presentation/screen/video_detail/video_detail_view_model.dart';
import 'package:get/get.dart';

class VideoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoDetailViewModel());
  }
}
