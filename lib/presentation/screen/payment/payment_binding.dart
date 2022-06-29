// Package imports:
// Project imports:
import 'package:diamon_rose_app/presentation/screen/payment/payment_presenter.dart';
import 'package:get/get.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPresenter());
  }
}
