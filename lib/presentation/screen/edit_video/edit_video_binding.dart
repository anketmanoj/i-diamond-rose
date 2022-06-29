// Package imports:
import 'package:diamon_rose_app/presentation/screen/edit_video/edit_video_view_model.dart';
import 'package:get/get.dart';

class EditVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditVideoViewModel());
  }
}
