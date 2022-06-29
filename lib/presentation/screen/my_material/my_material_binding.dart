import 'package:diamon_rose_app/presentation/screen/my_material/my_material_model.dart';
import 'package:get/get.dart';

class MyMaterialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyMaterialModel());
  }
}
