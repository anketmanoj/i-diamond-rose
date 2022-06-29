// Package imports:
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileViewModel());
  }
}
