import 'package:diamon_rose_app/presentation/screen/my_material/my_material_model.dart';
import 'package:diamon_rose_app/presentation/screen/my_material/value/my_material_gridview.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyMaterialScreen extends GetView<MyMaterialModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Localy.of(context)!.myMaterialText,
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
          onPressed: goBack,
        ),
        actions: [
          Container(
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/ic_sort.svg",
                height: 30,
                width: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: _bodyMyCollectionScreen(context),
    );
  }

  Widget _bodyMyCollectionScreen(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: TabBar(
                controller: controller.tabController,
                indicatorColor: Colors.transparent,
                labelPadding: EdgeInsets.all(0),
                unselectedLabelColor: AppColors.greyDark,
                labelColor: AppColors.purple01,
                tabs: [
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Text(
                      Localy.of(context)!.myARString,
                    ),
                  ),
                  Container(
                    height: 35,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: AppColors.black, width: 1),
                            right:
                                BorderSide(color: AppColors.black, width: 1))),
                    child: Text(
                      Localy.of(context)!.myCollectionBackground,
                    ),
                  ),
                  Container(
                      height: 30,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Text(
                        Localy.of(context)!.other,
                      ))
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  _myArView(context),
                  _listBackgroundView(context),
                  _listEffectView(context),
                ],
              ),
            )
          ],
        ));
  }

  Widget _myArView(BuildContext Context) =>
      GetBuilder<MyMaterialModel>(builder: (context) {
        return MyMaterialGridview(
            controller: controller,
            hasData: controller.arItems.length > 0,
            onTap: (url, id) => controller.previewVideo(url, id: id),
            data: controller.arItems,
            itemCount: controller.listAR!.length,
            thumbnailsLength: controller.arItems.length);
      });

  Widget _listBackgroundView(BuildContext context) =>
      GetBuilder<MyMaterialModel>(builder: (context) {
        return MyMaterialGridview(
            controller: controller,
            hasData: controller.backgroundItems.length > 0,
            onTap: (url, id) => controller.previewVideo(url),
            data: controller.backgroundItems,
            itemCount: controller.listBackground!.length,
            thumbnailsLength: controller.backgroundItems.length);
      });

  Widget _listEffectView(BuildContext context) =>
      GetBuilder<MyMaterialModel>(builder: (context) {
        return MyMaterialGridview(
          controller: controller,
          hasData: controller.effectItems.length > 0,
          onTap: (url, id) => controller.previewVideo(url),
          data: controller.effectItems,
          itemCount: controller.listEffect.length,
          thumbnailsLength: controller.effectItems.length,
        );
      });
}
