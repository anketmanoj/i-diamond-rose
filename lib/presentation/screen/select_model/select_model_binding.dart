import 'package:diamon_rose_app/presentation/screen/select_model/select_model_view_model.dart';
import 'package:get/get.dart';

class SelectModelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectModelPresenter());
  }
}
