import 'package:diamon_rose_app/presentation/screen/add_password/add_password_view_model.dart';
import 'package:get/get.dart';

class AddPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPasswordViewModel());
  }
}
