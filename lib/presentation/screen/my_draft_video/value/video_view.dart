import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/enum/layer_type.dart';
import 'package:diamon_rose_app/domain/entities/wk_video_entity/draft_video_item_entity.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/widget/shimmer_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoView extends StatelessWidget {
  VideoView({
    Key? key,
    required this.listLayer,
    required this.videoWidth,
    required this.videoHeight,
  }) : super(key: key);

  final List<DraftVideoItemEntity> listLayer;
  late final double videoWidth;
  late final double videoHeight;

  @override
  Widget build(BuildContext context) {
    final layerItem = listLayer.first.layerItem;
    if (layerItem.itemType.isBackground) {
      final ratio = MediaQuery.of(Get.context!).devicePixelRatio;
      videoWidth = (layerItem.width) / ratio / 3;
      videoHeight = (layerItem.height) / ratio / 3;
    }
    return Center(
        child: Container(
            height: videoHeight,
            width: videoWidth,
            child: Stack(children: listLayer.map(_buildWidgetItem).toList())));
  }

  Widget _buildWidgetItem(DraftVideoItemEntity layer) {
    final layerItem = layer.layerItem;
    final layerCusDTO = layer.layerItemCusDTO;
    final ratio = MediaQuery.of(Get.context!).devicePixelRatio;
    final width = (layerItem.width) / ratio / 3;
    final height = (layerItem.height) / ratio / 3;

    if (layerItem.startTime > 0) {
      return SizedBox.shrink();
    }

    return Positioned(
      left: layerItem.xcoordinates * videoWidth,
      top: layerItem.ycoordinates * videoHeight,
      child: Transform.rotate(
        angle: layerItem.radian,
        child: Listener(
          child: Container(
              width: width,
              height: height,
              child: CachedNetworkImage(
                imageUrl: layerCusDTO.itemThumbnailUrl,
                placeholder: (context, url) => new Center(
                  child: ShimmerCustom(
                    child: Container(
                      width: width,
                      height: height,
                      color: AppColors.white,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.black, width: 1),
                    ),
                    child: new Icon(Icons.error)),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
