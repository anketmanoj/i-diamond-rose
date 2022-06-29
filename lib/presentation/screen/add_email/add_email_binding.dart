// Package imports:
import 'package:diamon_rose_app/presentation/screen/add_email/add_email_view_model.dart';
import 'package:get/get.dart';

class AddEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddEmailViewModel());
  }
}
