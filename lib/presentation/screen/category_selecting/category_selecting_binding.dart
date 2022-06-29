import 'package:diamon_rose_app/presentation/screen/category_selecting/category_selecting_view_model.dart';
import 'package:get/get.dart';


class CategorySelectingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategorySelectingViewModel());
  }
}
