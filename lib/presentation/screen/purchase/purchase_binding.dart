import 'package:diamon_rose_app/presentation/screen/purchase/purchase_view_model.dart';
import 'package:get/get.dart';

class PurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PurchaseViewModel());
  }
}
