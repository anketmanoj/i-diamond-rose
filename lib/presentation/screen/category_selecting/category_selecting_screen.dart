import 'package:diamon_rose_app/presentation/screen/category_selecting/category_selecting_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorySelectingScreen extends GetView<CategorySelectingViewModel> {
  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => CustomScaffold(
          appBar: _appBar(context),
          body: _body(context),
        ));
  }

  Widget _body(BuildContext context) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Localy.of(context)!.titleGenreCategory,
              style: AppStyles.typeBold18(color: AppColors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: heightScreen(percent: 75),
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) => Obx(() => genreCategoryItem(
                    title: controller.listItems[index].title,
                    vale: controller.listItems[index].isSelected.value,
                    index: index)),
                itemCount: controller.listItems.length,
              ),
            ),
          ],
        ),
      ));

  PreferredSize _appBar(BuildContext context) => appBarApp(
      backgroundColor: AppColors.white,
      isGradientBackground: false,
      title: Localy.of(context)!.titleScreenGenre,
      titleColor: AppColors.white,
      iconLeft: Icon(Icons.arrow_back_ios, color: AppColors.white),
      actIconLeft: goBack,
      itemsRight: TextButton(
          onPressed: controller.submitGenres,
          child: Text(
            Localy.of(context)!.doneLabel,
            style: AppStyles.typeText18(color: AppColors.white, size: 16),
          )));

  Widget genreCategoryItem({
    required String title,
    required bool vale,
    required int index,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: SizedBox(
          height: 30,
          child: Row(
            children: [
              Checkbox(
                value: vale,
                onChanged: (value) => {controller.onChangeValue(index)},
                shape: CircleBorder(),
                activeColor: Colors.purple,
                checkColor: Colors.white,
                hoverColor: Colors.grey,
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
              InkWell(
                onTap: () => controller.onChangeValue(index),
                child: Text(
                  title,
                  style: AppStyles.typeText22(color: AppColors.white),
                ),
              )
            ],
          )),
    );
  }
}
