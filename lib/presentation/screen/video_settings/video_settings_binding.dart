import 'package:diamon_rose_app/presentation/screen/video_settings/video_settings_view_model.dart';
import 'package:get/get.dart';

class VideoSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoSettingsViewModel());
  }
}
