import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:get/get.dart';

class LostNetWorkViewModel extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  Future<void> pullRefresh() async {
    final homeViewModel = await Get.put(HomeViewModel());
    await homeViewModel.setCurrentScreen(homeViewModel.screenIndex.value);
    await Future.delayed(Duration(milliseconds: 1000));
  }
}
