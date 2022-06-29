import 'package:diamon_rose_app/presentation/screen/user_profile_social/user_profile_social_view_model.dart';
import 'package:get/get.dart';

class UserProfileSocialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileSocialViewModel());
  }
}
