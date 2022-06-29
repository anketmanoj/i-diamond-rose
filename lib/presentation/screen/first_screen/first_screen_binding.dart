import 'package:diamon_rose_app/presentation/screen/first_screen/first_screen_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class FirstScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstScreenViewModel());
  }
}
