import 'package:diamon_rose_app/presentation/screen/block_user/block_view_model.dart';
import 'package:get/get.dart';

class BlockBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlockViewModel());
  }
}
