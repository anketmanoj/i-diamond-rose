import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/video_detail_entity/value/item_material_entity.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:flutter/material.dart';

class BottomSheetMaterial extends StatelessWidget {
  BottomSheetMaterial({Key? key, this.materialModels, this.onTap})
      : super(key: key);

  final List<ItemMaterialEntity>? materialModels;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.darkPurple.withOpacity(0.3),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                Localy.of(context)!.labelMaterial,
                style: AppStyles.typeText22(color: AppColors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 180,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return _materialItem(
                        image: materialModels![index].itemThumbnailUrl,
                        type: "");
                  },
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: materialModels!.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _materialItem({String? image, String? type}) {
    return new InkWell(
      onTap: onTap,
      child: new Container(
        width: 118,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          color: AppColors.white,
          boxShadow: [
            new BoxShadow(
                color: Colors.black.withAlpha(70),
                offset: const Offset(3, 10),
                blurRadius: 15)
          ],
        ),
        child: new Stack(
          children: <Widget>[
            CachedNetworkImage(
                imageUrl: image!,
                placeholder: (context, url) => new Center(
                    child: Container(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator())),
                errorWidget: (context, url, error) => new Icon(Icons.error),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
              ),
            new Align(
              alignment: Alignment.bottomCenter,
              child: new Container(
                width: double.infinity,
                decoration: new BoxDecoration(
                    color: const Color(0xFF273A48).withOpacity(0.6),
                    borderRadius: new BorderRadius.only(
                        bottomLeft: new Radius.circular(5),
                        bottomRight: new Radius.circular(5)
                    )
                  ),
                child: new Text(
                  type!,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: new TextStyle(color: Colors.white),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
