import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_view_model.dart';
import 'package:get/get.dart';

class UserProfileInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileInfoViewModel());
  }
}
