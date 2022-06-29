import 'package:diamon_rose_app/data/model/enum/loading_state.dart';
import 'package:diamon_rose_app/data/repositiory/favorite_repository/favorite_repository.dart';
import 'package:diamon_rose_app/data/repositiory/like_repository/like_repository.dart';
import 'package:diamon_rose_app/domain/entities/favorite_entity/favorite_model.dart';
import 'package:diamon_rose_app/domain/entities/request/event_video_request/event_video_model.dart';
import 'package:diamon_rose_app/domain/local_storage/video_local_storage.dart/video_local_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UseFavoriteViewModel extends GetxController {
  RxList<FavoriteModel> _favoriteList = RxList<FavoriteModel>([]);

  List<FavoriteModel> get favoriteList => _favoriteList;

  Rx<LoadingState> _loading = Rx<LoadingState>(LoadingState.none);

  bool get isLoadingInit => _loading.value == LoadingState.loading;

  RxString _search = RxString("");

  String get search => _search.value;

  RxInt page = 0.obs;

  RxInt _totalPage = 0.obs;

  RxInt _totalElements = 0.obs;

  RxInt get totalElement => _totalElements;

  ScrollController listViewController = new ScrollController();

  VideoLocalStorage videoLocalStorage = VideoLocalStorage();

  @override
  void onInit() {
    super.onInit();
    initViewModel();
  }

  Future<void> initViewModel() async {
    getFavoriteVideos();
    listViewController.addListener(() {
      if (listViewController.position.pixels ==
          listViewController.position.maxScrollExtent) {
        getFavoriteVideos(isRefresh: false);
      }
    });
    update();
  }

  void onValueChange(String value) {
    if (value.isNotEmpty) {
      _search.value = value;
    }
  }

  void getFavoriteVideos({bool isRefresh = true}) {
    if (isRefresh) {
      page.value = 0;
      _favoriteList = RxList<FavoriteModel>([]);
    }
    if (_totalPage.value != 0) {
      if (page.value >= _totalPage.value) {
        return;
      }
    }
    FavoriteRepository.instance.getFavoriteVideos(
        page: page.value,
        size: 10,
        sort: "createdAt",
        onStart: () {
          if (page.value == 0) {
            _loading.value = LoadingState.loading;
          }
        },
        onSuccess: (response) async {
          for (int i = 0; i < response.numberOfElements; i++) {
            _favoriteList.add(response.items[i]!);
          }
          page.value++;
          _totalPage.value = response.totalPage;
          _totalElements.value = response.totalElements;
          _loading.value = LoadingState.none;
          update();
        },
        onError: (error) {
          print(error);
        });
  }

  Future<void> removeItemId(int id, Function(String successMessage) onSuccess,
      Function(String errorMessage) onError) async {
    LikeRepository.instance.requestFavoriteVideo(
        isFavorite: false,
        eventVideoModel: EventVideoModel(id: id),
        onStart: () {
          _loading.value = LoadingState.loading;
          update();
        },
        onSuccess: (response) async {
          _loading.value = LoadingState.none;
          _favoriteList.removeWhere((item) => item.id == id);
          await _totalElements--;
          await VideoLocalStorage.deletevideoInfo(id);

          onSuccess(response["data"]["messages"].first);
        },
        onError: (error) async {
          _loading.value = LoadingState.none;

          onError(error.first.toString());
        });

    update();
  }
}
