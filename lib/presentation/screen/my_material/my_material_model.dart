import 'dart:async';

import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/my_collection_repository/my_collection_repository.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/background_entity.dart';
import 'package:diamon_rose_app/domain/entities/collection_entity/effect_entity.dart';
import 'package:diamon_rose_app/domain/entities/enum/video_source.dart';
import 'package:diamon_rose_app/domain/entities/my_ar_entity/my_ar_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/collection_request/request_get_ar_model.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMaterialModel extends GetxController
    with WidgetsBindingObserver, SingleGetTickerProviderMixin {
  RxList<MyAREntity?>? listAR = RxList<MyAREntity>();
  RxList<BackgroundEntity?>? listBackground = RxList<BackgroundEntity>();
  RxList<EffectEntity?> listEffect = RxList<EffectEntity>();
  BuildContext? context;
  RxList<MyMaterialItem> _backgroundItems = RxList();
  RxList<MyMaterialItem> _effectItems = RxList();
  RxList<MyMaterialItem> _arItems = RxList();
  final ScrollController scrollController = ScrollController();
  var _arPage = PAGE;
  var _backgroundPage = PAGE;
  var _effectPage = PAGE;
  int? totalArRecord;

  int? totalEffectRecord;
  int? totalBackgroundRecord;
  Rx<LoadingState> _loadingState = Rx(LoadingState.none);

  late TabController tabController;

  bool get isLoading => _loadingState.value == LoadingState.loading;

  List<MyMaterialItem> get arItems => _arItems;

  List<MyMaterialItem> get backgroundItems => _backgroundItems;

  List<MyMaterialItem> get effectItems => _effectItems;

  @override
  void onInit() {
    super.onInit();
    showLoading();
    tabController = new TabController(vsync: this, length: 3);
    scrollController.addListener(_onLoadMore);
    tabController.addListener(_onTabChange);
    getAR();
  }

  void _onTabChange() {
    if (tabController.indexIsChanging) {
      if (tabController.index == 0 && totalArRecord == null) {
        showLoading();
        getAR();
      } else if (tabController.index == 1 && totalBackgroundRecord == null) {
        showLoading();
        getBackground();
      } else if (tabController.index == 2 && totalEffectRecord == null) {
        showLoading();
        getEffect();
      }
    }
  }

  Future<void> _onLoadMore() async {
    if (!scrollController.hasClients || isLoading) {
      return;
    }
    final thresholdReached = scrollController.position.extentAfter == 0;
    if (thresholdReached) {
      if (tabController.index == 0 &&
          totalArRecord != null &&
          _arItems.length < totalArRecord!) {
        _loadingState.value = LoadingState.loading;
        update();
        _arPage++;
        getAR();
      } else if (tabController.index == 1 &&
          totalBackgroundRecord != null &&
          _backgroundItems.length < totalBackgroundRecord!) {
        _loadingState.value = LoadingState.loading;
        update();
        _backgroundPage++;
        await getBackground();
      } else if (tabController.index == 2 &&
          totalEffectRecord != null &&
          _effectItems.length < totalEffectRecord!) {
        _loadingState.value = LoadingState.loading;
        update();
        _effectPage++;
        getEffect();
      }
    }
  }

  void getAR() {
    MyCollectionRepository.instance.getMyAR(
      requestParam: RequestGetArModel(
        page: _arPage,
        size: PAGE_SIZE,
      ),
      onStart: () {},
      onSuccess: (value) async {
        final data = value.items;
        listAR!.addAll(data);
        totalArRecord = value.totalElements;
        try {
          await getThumbnailAR(data
              .map((element) => MyMaterialItem(
                  id: element!.arCollectionDTO.id,
                  url: element.arCollectionDTO.arUrl,
                  thumbnail: element.arCollectionDTO.thumbnail))
              .toList());
        } on Exception catch (_) {}

        await dismissLoading();
        _loadingState.value = LoadingState.none;
        update();
      },
      onError: (value) {
        dismissLoading();
        _loadingState.value = LoadingState.none;
        update();
      },
    );
  }

  Future<void> getBackground() async {
    await MyCollectionRepository.instance.getBackground(
        requestParam: RequestGetArModel(
          page: _backgroundPage,
          size: PAGE_SIZE,
        ),
        onStart: () {},
        onSuccess: (value) async {
          final data = value.items;
          listBackground!.addAll(data);
          totalBackgroundRecord = value.totalElements;
          await getListThumbnailBackground(data
              .map((element) => MyMaterialItem(
                  id: element!.id,
                  url: element.backgroundUrl,
                  thumbnail: element.thumbnail))
              .toList());
          await dismissLoading();
          _loadingState.value = LoadingState.none;
          update();
        },
        onError: (error) {
          dismissLoading();
          showErrorConfirmDialog(context: context!, errors: error);
          _loadingState.value = LoadingState.none;
          update();
        });
  }

  void getEffect() {
    MyCollectionRepository.instance.getEffect(
        requestParam: RequestGetArModel(
          page: _effectPage,
          size: PAGE_SIZE,
        ),
        onStart: () {},
        onSuccess: (value) async {
          final data = value.items;
          listEffect.addAll(data);
          totalEffectRecord = value.totalElements;
          await getThumbnailEffect(data
              .map((element) => MyMaterialItem(
                  id: element!.id,
                  url: element.effectUrl,
                  thumbnail: element.thumbnail))
              .toList());
          await dismissLoading();
          _loadingState.value = LoadingState.none;
          update();
        },
        onError: (error) {
          print(error);
          dismissLoading();
          _loadingState.value = LoadingState.none;
          update();
        });
  }

  Future<void> getListThumbnailBackground(List<MyMaterialItem> items) async {
    _backgroundItems
      ..addAll(items)
      ..refresh();
  }

  Future<void> getThumbnailEffect(List<MyMaterialItem> items) async {
    _effectItems
      ..addAll(items)
      ..refresh();
  }

  Future<void> getThumbnailAR(List<MyMaterialItem> items) async {
    _arItems
      ..addAll(items)
      ..refresh();
  }

  Future<void> previewVideo(String videoUrl, {int? id}) async {
    final Map<String, String> parameter = {
      'source': VideoSource.network.asString()!,
      'filePath': videoUrl,
    };
    if (id != null) {
      parameter.addAll({'id': id.toString()});
    }
    await goTo(screen: ROUTER_REPLAY_VIDEO, parameter: parameter)
        .then((message) {
      if (message != null) {
        showSnackBar(message: message, snackBarType: SnackBarType.success);
        _arItems.clear();
        listAR?.clear();
        _arPage = PAGE;
        totalArRecord = null;
        getAR();
      }
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

class MyMaterialItem {
  MyMaterialItem({
    this.id = -1,
    this.url = '',
    this.thumbnail = '',
  });

  int id;
  String url;
  String thumbnail;
}
