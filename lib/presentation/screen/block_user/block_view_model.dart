import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/block_user_repository/block_user_repository.dart';
import 'package:diamon_rose_app/domain/entities/request/block_item/block_item_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class BlockViewModel extends GetxController with WidgetsBindingObserver {
  RxList<BlockUserItemModel?> _blockUserList = RxList<BlockUserItemModel>([]);

  List<BlockUserItemModel?> get blockUserList => _blockUserList;

  ScrollController listViewController = new ScrollController();

  RxInt page = 0.obs;

  RxInt _totalPage = 0.obs;

  RxInt _totalElements = 0.obs;
  Rx<LoadingState> _loading = Rx<LoadingState>(LoadingState.none);

  bool get isLoadingInit => _loading.value == LoadingState.loading;

  RxInt get totalElement => _totalElements;
  BuildContext? context = Get.context;

  @override
  void onInit() {
    _initData();
    super.onInit();
  }

  void fetchData({bool isRefresh = true}) {
    if (isRefresh) {
      page.value = 0;
      _blockUserList = RxList<BlockUserItemModel>([]);
    }
    if (_totalPage.value != 0) {
      if (page.value >= _totalPage.value) {
        return;
      }
    }
    BlockUserRepository.instance.requestGetBlockList(
        page: page.value,
        size: 10,
        onStart: () {
          if (page.value == 0) {
            _loading.value = LoadingState.loading;
          }
        },
        onSuccess: (response) {
          for (int i = 0; i < response.numberOfElements; i++) {
            _blockUserList.add(response.items[i]);
          }
          page.value++;
          _totalPage.value = response.totalPage;
          _totalElements.value = response.totalElements;
          _loading.value = LoadingState.none;
          update();
        },
        onError: (error) {});
    update();
  }

  void unBlock({required int index}) {
    BlockUserRepository.instance.requestUnblock(
        id: _blockUserList[index]!.id,
        onStart: () {
          showLoading();
        },
        onSuccess: (response) async {
          _blockUserList.removeAt(index);
          _totalElements.value--;
          await dismissLoading();
          await showConfirmDialog(
              onlyActionRight: true,
              title: Localy.of(context!)!.successTitle,
              action: () {},
              context: context!,
              message: response[0].toString());
        },
        onError: (error) async {
          await dismissLoading();
        });
    update();
  }

  void _initData() {
    fetchData();
    listViewController.addListener(() {
      if (listViewController.position.pixels ==
          listViewController.position.maxScrollExtent) {
        fetchData(isRefresh: false);
      }
    });
    update();
  }

  void onTapBlockItem() {
    showConfirmDialog(
        context: context!,
        onlyActionRight: true,
        action: () {},
        message: Localy.of(context!)!.dialogBlockUser);
  }
}
