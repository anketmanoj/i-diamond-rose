import 'package:diamon_rose_app/data/repositiory/video_repository/video_repository.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/domain/entities/account_entity/account_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/video_detail_entity.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:get/get.dart';

class MyCollectionDetailViewModel extends GetxController {
  AccountEntity account = AppData().dummyAccount;
  Rx<VideoDetailEntity> videoDetailEntity =
      Rx<VideoDetailEntity>(VideoDetailEntity());
  Rx<bool> isLoading = Rx<bool>(true);
  final context = Get.context;

  @override
  void onInit() {
    final id = Get.arguments;
    getVideoDetailById(id);
    super.onInit();
  }

  Future<VideoDetailEntity> getVideoDetailById(int? id) async {
    return await VideoRepository.instance.requestGetVideoDetail(
        id: id,
        onStart: () {
          showLoading();
        },
        onSuccess: (data) async {
          await dismissLoading();
          isLoading.value = false;
          videoDetailEntity.value = VideoDetailEntity.fromJson(data["item"]);
        },
        onError: (error) async {
          isLoading.value = true;
          await dismissLoading();
          await showErrorConfirmDialog(
            context: context!,
            errors: error,
          );
        });
  }
}
