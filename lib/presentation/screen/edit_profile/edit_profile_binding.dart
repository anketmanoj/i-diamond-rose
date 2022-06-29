import 'package:diamon_rose_app/presentation/screen/edit_profile/edit_profile_view_model.dart';
import 'package:get/get.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileViewModel());
  }
}
