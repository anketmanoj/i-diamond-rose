import 'package:diamon_rose_app/data/repositiory/my_collection_repository/my_collection_repository.dart';
import 'package:diamon_rose_app/domain/entities/purchase_history/purchase_history_model.dart';
import 'package:diamon_rose_app/domain/entities/request/collection_request/request_my_collection_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyCollectionViewModel extends GetxController with StateMixin {
  final ProfileViewModel _profileViewModel = Get.put(ProfileViewModel());
  RxString? uid;
  BuildContext context = Get.context!;
  List<PurchaseHistoryModel?> collections = [];
  ScrollController scrollController = ScrollController();
  RxInt scrollPosition = 0.obs;

  @override
  void onInit() {
    super.onInit();
    uid = _profileViewModel.uidLocal;
    scrollController = new ScrollController()..addListener(checkScrollPosition);
    getMyCollection();
  }

  void getMyCollection() {
    MyCollectionRepository.instance.requestMyCollections(
        requestMyCollectionModel: RequestMyCollectionModel(
            type: 1, pageNumber: scrollPosition.value, pageSize: 10),
        onStart: () {},
        onSuccess: (data) async {
          collections.addAll(data.items);
          await dismissLoading();
          change(collections, status: RxStatus.success());
          scrollPosition++;
        },
        onError: (error) async {
          await dismissLoading();
          await showErrorConfirmDialog(
            context: context,
            errors: error,
          );
        });
  }

  Future<void> checkScrollPosition() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      getMyCollection();
    }
  }
}
