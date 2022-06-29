import 'package:diamon_rose_app/presentation/screen/shopping_cart/shopping_cart_view_model.dart';
import 'package:get/get.dart';

class ShoppingCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShoppingCartViewModel());
  }
}
