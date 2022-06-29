import 'package:diamon_rose_app/presentation/screen/notification/notification_viewmodel.dart';
import 'package:get/get.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UseNotificationViewModel());
  }
}
