import 'package:diamon_rose_app/data/model/enum/notification_type.dart';
import 'package:diamon_rose_app/presentation/screen/notification/notification_viewmodel.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/widget/circle_avatar_custom.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    Key? key,
    required this.action,
    required this.content,
    required this.time,
    required this.avatar,
    required this.onTap,
    required this.controller,
  }) : super(key: key);

  final VoidCallback? action;
  final VoidCallback? onTap;

  final String content;
  final String avatar;
  final String time;
  final UseNotificationViewModel controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: action,
      child: Row(
        children: <Widget>[
          (controller.type.value == NotificationType.videoMatting ||
                  controller.type.value == NotificationType.mergedVideo)
              ? Container()
              : Container(
                  child: avatar.contains("avatar")
                      ? CircleAvatarCustom(
                          avatar: avatar,
                        )
                      : Image.asset(AppImages.img_noti_avatar_png),
                ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  content,
                  style: AppStyles.typeTextNormal(color: AppColors.dimGray01),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: AppStyles.typeTextNormal(color: AppColors.dimGray01),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
