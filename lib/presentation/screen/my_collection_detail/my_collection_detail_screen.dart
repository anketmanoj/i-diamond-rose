import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection_detail/detail_widget/read_more.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection_detail/my_collection_detail_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class MyCollectionDetailScreen extends GetView<MyCollectionDetailViewModel> {
  MyCollectionDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
          () => controller.isLoading.value ? Container() : _bodyBody(context)),
    );
  }

  Widget _bodyBody(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Center(
                child: CachedNetworkImage(
              imageUrl: controller
                  .videoDetailEntity.value.videoItemDetail!.videoThumbnail,
              placeholder: (context, url) => new Center(
                  child: Container(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => new Icon(Icons.error),
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )),
            // image here
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15, top: 20),
                      child: CachedNetworkImage(
                        imageUrl: controller.videoDetailEntity.value.avatarUrl,
                        placeholder: (context, url) => new Center(
                            child: Container(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator())),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                        imageBuilder: (context, imageProvider) => Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.white, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 13),
                    child: Text(
                      controller.videoDetailEntity.value.displayName,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: widthScreen(percent: 80),
                    padding: EdgeInsets.only(left: 25),
                    child: ReadMoreText(
                        controller.videoDetailEntity.value.videoItemDetail!
                            .videoCaption,
                        trimLines: 1,
                        trimMode: TrimMode.Line,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                        moreStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        trimCollapsedText: Localy.of(context)!.textSeeMore,
                        trimExpandedText: ""),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: widthScreen(percent: 80),
                    padding: EdgeInsets.only(left: 25),
                    child: ReadMoreText(
                      controller
                          .videoDetailEntity.value.videoItemDetail!.videoDesc,
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      moreStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      trimCollapsedText: Localy.of(context)!.textSeeMore,
                      trimExpandedText: "",
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
              right: 15,
              top: heightScreen() * 0.6,
              child: GestureDetector(
                onTap: () => showModalBottomSheet<void>(
                    backgroundColor: AppColors.darkPurple.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    isScrollControlled: true,
                    context: context,
                    builder: bottomSheet),
                child: Container(
                  height: 40,
                  width: 100,
                  color: AppColors.greyDarkLittle,
                  child: Center(
                    child: Text(
                      Localy.of(context)!.textMaterial,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )),
          Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset('assets/images/svg/ic_play.svg'),
              ))
        ],
      ),
    );
  }

  Widget bottomSheet(BuildContext context) => Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
                child: Text(
              Localy.of(context)!.textMaterial,
              style: TextStyle(color: AppColors.white, fontSize: 20),
            )),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.videoDetailEntity.value.videoItemDetail!
                      .listItem!.length,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: materialItem(
                          image: controller
                              .videoDetailEntity
                              .value
                              .videoItemDetail!
                              .listItem![index]
                              .itemThumbnailUrl,
                        ));
                  }),
            ),
          )
        ],
      ));

  Widget materialItem({String? image, String? type}) {
    return Container(
      color: AppColors.white,
      child: image!.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) => new Center(
                  child: Container(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => new Icon(Icons.error),
              imageBuilder: (context, imageProvider) => Container(
                width: widthScreen(percent: 20),
                height: heightScreen(percent: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          : Center(child: Text(type ?? "")),
    );
  }
}
