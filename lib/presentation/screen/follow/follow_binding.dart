import 'package:diamon_rose_app/presentation/screen/follow/follow_view_model.dart';
import 'package:get/get.dart';

class FollowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowViewModel());
  }
}
