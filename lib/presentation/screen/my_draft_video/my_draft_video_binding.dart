import 'package:diamon_rose_app/presentation/screen/my_draft_video/my_draft_video_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class MyDraftVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyDraftVideoViewModel());
  }
}
