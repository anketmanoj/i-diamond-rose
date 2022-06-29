import 'package:diamon_rose_app/data/model/Item_genre.dart';
import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/domain/entities/genre_entity/genre_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/video_settings_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorySelectingViewModel extends GetxController with StateMixin {
  RxList<ItemGenre> _listItems = RxList<ItemGenre>([]);

  List<ItemGenre> get listItems => _listItems;

  List<GenreEntity?> _listGenres = <GenreEntity?>[];

  BuildContext? context = Get.context;

  final String previousRoute = Get.previousRoute;

  @override
  void onInit() {
    generateList();
    super.onInit();
  }

  void onChangeValue(int index) {
    _listItems[index].isSelected.value = !_listItems[index].isSelected.value;
    update();
  }

  void generateList() {
    if (previousRoute == ROUTER_MAIN) {
      UserRepository.instance.getGenres(
          onStart: () {},
          onSuccess: (response) async {
            change(response, status: RxStatus.success());
            _listGenres = await response.items;
            for (int i = 0; i < _listGenres.length; i++) {
              _listItems.add(ItemGenre(
                  isSelected: _listGenres[i]!.isSelected!.obs,
                  title: _listGenres[i]!.label));
              update();
            }
          },
          onError: (error) {
            print(error.toString());
          });
    } else {
      _listGenres = Get.arguments ?? <GenreEntity?>[];
      for (int i = 0; i < _listGenres.length; i++) {
        _listItems.add(ItemGenre(
            isSelected: _listGenres[i]!.isSelected!.obs,
            title: _listGenres[i]!.label));
        change(_listItems, status: RxStatus.success());
        update();
      }
    }
  }

  Future<void> submitGenres() async {
    final List<GenreEntity> list = <GenreEntity>[];
    for (int i = 0; i < _listGenres.length; i++) {
      list.add(GenreEntity(
          id: _listGenres[i]!.id,
          code: _listGenres[i]!.code,
          label: _listGenres[i]!.label,
          position: _listGenres[i]!.position,
          isSelected: _listItems[i].isSelected.value));
    }
    await showConfirmDialog(
        context: context!,
        action: () {
          if (previousRoute == ROUTER_MAIN) {
            UserRepository.instance.postGenres(
                listGenre: list,
                onStart: () {},
                onSuccess: (response) async {
                  await showSnackBar(
                      message: "${response[0]}",
                      snackBarType: SnackBarType.success);
                },
                onError: (error) async {
                  await showSnackBar(
                      message: "${error[0]}",
                      snackBarType: SnackBarType.danger);
                  print(error.toString());
                });
            goBack();
          } else {
            Get.find<VideoSettingsViewModel>().requestVideoSettingModel =
                Get.find<VideoSettingsViewModel>()
                    .requestVideoSettingModel
                    .copyWith(genres: list);
            goBack();
          }
        });
  }
}
