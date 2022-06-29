import 'package:diamon_rose_app/presentation/screen/lost_network_screen/lost_network_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class LostNetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LostNetWorkViewModel());
  }
}
