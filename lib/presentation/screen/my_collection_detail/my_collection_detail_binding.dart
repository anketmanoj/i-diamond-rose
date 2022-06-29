import 'package:diamon_rose_app/presentation/screen/my_collection_detail/my_collection_detail_model.dart';
import 'package:get/get.dart';

class MyCollectionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCollectionDetailViewModel());
  }
}
