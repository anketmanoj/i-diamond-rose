import 'package:diamon_rose_app/presentation/screen/favorite/favorite_screen_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class FavoriteScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UseFavoriteViewModel());
  }
}
