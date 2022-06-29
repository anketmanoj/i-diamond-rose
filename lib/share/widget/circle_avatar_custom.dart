import 'package:cached_network_image/cached_network_image.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';

class CircleAvatarCustom extends StatelessWidget {
  CircleAvatarCustom({
    Key? key,
    this.avatar,
    this.userName,
    this.radius,
  }) : super(key: key);

  final String? avatar;
  final String? userName;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    print(avatar);
    return CachedNetworkImage(
      imageUrl: avatar!,
      // TODO(CacheImage): apply cache for image.
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        minRadius: radius ?? null,
        backgroundColor: AppColors.purple03,
        child: ((avatar?.isEmpty ?? true) && (userName?.isNotEmpty ?? false))
            ? Text(
                userName?.substring(0, 2) ?? '',
                textScaleFactor: 1,
                style: TextStyle(color: Colors.black),
              )
            : Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: imageProvider,
                  ),
                ),
              ),
      ),
      placeholder: (context, url) => Container(
        child: Image.network(
          avatar!,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, imageChunkEvent) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          errorBuilder: (context, error, stackTrace) => Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      errorWidget: (context, url, error) => CircleAvatar(
        minRadius: radius ?? null,
        backgroundColor: AppColors.purple03,
        child: Text(
          userName?.substring(0, 2) ?? '',
          textScaleFactor: 1,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
