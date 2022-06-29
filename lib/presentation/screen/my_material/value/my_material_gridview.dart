import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/presentation/screen/my_material/my_material_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/widget/shimmer_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMaterialGridview extends StatelessWidget {
  MyMaterialGridview({
    Key? key,
    required this.controller,
    this.data = const [],
    this.hasData = false,
    this.itemCount = 0,
    this.crossAxisCount = 2,
    this.thumbnailsLength = 0,
    this.onTap,
  }) : super(key: key);

  final MyMaterialModel controller;
  final List<MyMaterialItem>? data;
  final bool hasData;
  final int itemCount;
  final int crossAxisCount;
  final int thumbnailsLength;
  final Function(String, int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          GridView.builder(
              itemCount: itemCount,
              controller: controller.scrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 2 / 3),
              itemBuilder: (_, index) => Container(
                    child: Builder(builder: (context) {
                      if (hasData) {
                        if (index < thumbnailsLength) {
                          return GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap!(data![index].url,data![index].id);
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.greyBorder),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: data![index].thumbnail,
                                fit: BoxFit.contain,
                                placeholder: (context, url) => ShimmerCustom(
                                  child: Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      color: AppColors.white),
                                ),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          );
                        }
                      }
                      return Center(
                        child: Text(Localy.of(context)!.loading),
                      );
                    }),
                  )),
          GetBuilder<MyMaterialModel>(builder: (context) {
            return controller.isLoading
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: ShimmerCustom(
                      highlightColor: AppColors.blue,
                      child: Container(
                          height: 5,
                          width: double.infinity,
                          color: AppColors.greyDark),
                    ),
                  )
                : SizedBox.shrink();
          })
        ],
      ),
    );
  }
}
