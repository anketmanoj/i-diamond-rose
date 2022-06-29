import 'package:diamon_rose_app/presentation/screen/condition_purchase/condition_purchase_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ConditionPurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConditionPurchaseViewModel());
  }
}
