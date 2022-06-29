import 'package:diamon_rose_app/presentation/screen/register/register_view_model.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterViewModel());
  }
}
