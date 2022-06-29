import 'package:diamon_rose_app/presentation/screen/ar_progressing/ar_progressing_view_model.dart';
import 'package:get/get.dart';

class ArProgressingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArProgressingViewModel());
  }
}
