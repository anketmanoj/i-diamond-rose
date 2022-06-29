import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/domain/entities/purchase_history/purchase_history_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCardView extends StatefulWidget {
  CustomCardView({Key? key, required this.arEntity}) : super(key: key);
  final PurchaseHistoryModel? arEntity;

  @override
  State<CustomCardView> createState() => CardViewState();
}

class CardViewState extends State<CustomCardView> {
  @override
  Widget build(BuildContext context) {
    final DateTime dateTime =
        DateTime.parse(widget.arEntity!.purchaseHistory!.createdAt!);
    final String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
    return Container(
      height: heightScreen(percent: 25),
      child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  color: AppColors.greyDark,
                  width: widthScreen(percent: 33),
                  child: CachedNetworkImage(
                    imageUrl: widget.arEntity!.video!.thumbnailUrl!,
                    placeholder: (context, url) => new Center(
                        child: Container(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator())),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.arEntity!.video?.videoCaption ?? "",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.purple01),
                        ),
                        Text(
                          widget.arEntity!.video?.videoCaption ?? "",
                          style: TextStyle(
                              color: AppColors.purple01, fontSize: 18),
                        ),
                        Text(
                            widget.arEntity!.videoSetting?.price.toString() ??
                                "",
                            style: TextStyle(
                                color: AppColors.purple01, fontSize: 16)),
                        Text(
                          widget.arEntity!.video?.videoDesc ?? "",
                          style: TextStyle(color: AppColors.purple01),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(formattedDate,
                                style: TextStyle(color: AppColors.greyDark)),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
