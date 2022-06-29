import 'dart:ui';

import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/wk_video_repository/wk_video_repository.dart';
import 'package:diamon_rose_app/domain/entities/enum/edit_video_type.dart';
import 'package:diamon_rose_app/domain/entities/request/draft_video_request/draft_video_request.dart';
import 'package:diamon_rose_app/domain/entities/wk_video_entity/my_draft_video_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDraftVideoViewModel extends GetxController {
  late final double _screenHeight;
  late final double _screenWidth;
  final Rx<LoadingState> _loadingState = LoadingState.init.obs;
  final ScrollController scrollController = ScrollController();
  final Rx<List<MyDraftVideoEntity?>> _myDraftVideos = Rx([]);
  int _pageSize = 10;
  int _page = 0;
  int? _totalVideoRecord;

  List<MyDraftVideoEntity?> get myDraftVideos => _myDraftVideos.value;

  bool get isInit => _loadingState.value == LoadingState.init;

  bool get isLoading => _loadingState.value == LoadingState.loading;

  double get screenHeight => _screenHeight;

  double get screenWidth => _screenWidth;

  @override
  Future<void> onInit() async {
    _screenHeight = (window.physicalSize.height - window.padding.top) /
        window.devicePixelRatio;
    _screenWidth = window.physicalSize.width / window.devicePixelRatio;
    scrollController.addListener(_onLoadMore);
    callDraftVideoAPI();
    super.onInit();
  }

  Future<void> _onLoadMore() async {
    if (!scrollController.hasClients || _loadingState == LoadingState.loading)
      return;
    final thresholdReached = scrollController.position.extentAfter == 0;
    if (thresholdReached) {
      if (_totalVideoRecord != null &&
          myDraftVideos.length < _totalVideoRecord!) {
        _loadingState.value = LoadingState.loading;
        _page++;
        callDraftVideoAPI();
      }
    }
  }

  Future<void> onNavigateEditVideo(MyDraftVideoEntity draftVideoData) async {
    final agr = {'TYPE': EditVideoType.updateVideo, 'DATA': draftVideoData};
    await Get.toNamed(ROUTER_EDIT_VIDEO, arguments: agr)?.then((result) {
      if (result ?? false) {
        showLoading();
        _myDraftVideos.value.clear();
        callDraftVideoAPI(page: 0, pageSize: _pageSize * (_page + 1));
      }
    });
  }

  void onDeleteVideo(int id) {
    VideoCreateRepository.instance.requestDeleteVideo(
      id: id,
      onStart: showLoading,
      onSuccess: (response) async {
        _myDraftVideos.value.removeWhere((e) => e?.id == id);
        _myDraftVideos.refresh();
        await dismissLoading();
        await showSnackBar(
            message: response[0], snackBarType: SnackBarType.success);
      },
      onError: (error) async {
        await showSnackBar(
            message: error.join("\n"), snackBarType: SnackBarType.danger);
        await dismissLoading();
      },
    );
  }

  void callDraftVideoAPI({int? page, int? pageSize}) {
    VideoCreateRepository.instance.requestGetDraftVideo(
      draftVideoRequest:
          DraftVideoRequest(size: pageSize ?? _pageSize, page: page ?? _page),
      onStart: () {},
      onSuccess: (response) async {
        _myDraftVideos.value..addAll(response.items);
        _totalVideoRecord = response.totalElements;
        _myDraftVideos.refresh();
        _loadingState.value = LoadingState.none;
        await dismissLoading();
        update();
      },
      onError: (error) async {
        await showSnackBar(
            message: error.join("\n"), snackBarType: SnackBarType.danger);
        _loadingState.value = LoadingState.none;
        await dismissLoading();
        update();
      },
    );
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
