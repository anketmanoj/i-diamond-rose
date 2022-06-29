import 'package:diamon_rose_app/domain/entities/request/noti_request/noti_item_model.dart';
import 'package:diamon_rose_app/presentation/screen/notification/notification_viewmodel.dart';
import 'package:diamon_rose_app/presentation/screen/notification/shimmer/notification_shimmer_list.dart';
import 'package:diamon_rose_app/presentation/screen/notification/value/notification_item.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/custom_listview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends GetView<UseNotificationViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: controller.obx((state) => _buildBody(context),
            onLoading: NotificationShimmerList()));
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 1,
      title: Obx(_buildDropDownButton),
      backgroundColor: AppColors.white,
    );
  }

  Widget _buildBody(BuildContext context) {
    if (controller.isLoadingInit) {
      return NotificationShimmerList();
    }
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColors.white,
      child: controller.notificationList.isEmpty
          ? Center(
              child: Text(
                Localy.of(context)!.labelEmptyNotification,
                textAlign: TextAlign.center,
              ),
            )
          : RefreshIndicator(
              onRefresh: () async {
                await controller.fetchItems();
              },
              child: CustomGroupListView<dynamic, String>(
                sort: false,
                elements: controller.notificationList,
                groupBy: (element) {
                  return element.createdAt.substring(0, 7);
                },
                groupComparator: (value1, value2) => value2.compareTo(value1),
                itemComparator: (item1, item2) => item1.id.compareTo(item2.id),
                groupSeparatorBuilder: (String value) => Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  height: heightScreen(percent: 4),
                  decoration: BoxDecoration(color: AppColors.greyDarkLittle),
                  child: Text(
                    value,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyDark),
                  ),
                ),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (c, element) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 21, vertical: 10),
                    child: _buildNotificationItem(context, element),
                  );
                },
                controller: controller.listViewController,
              )),
    );
  }

  Widget _buildNotificationItem(
      BuildContext context, NotificationItemModel item) {
    return NotificationItem(
      onTap: () {
        item.itemUrl.isEmpty ? {} : controller.navigateToReplayVideo(item);
      },
      action: () {
        onLongPressOnItemId(item.id, context);
      },
      content: item.content,
      time: StringUtils.dateTimeFormatter(item.createdAt),
      avatar: item.thumbnail,
      controller: controller,
    );
  }

  void onLongPressOnItemId(int id, BuildContext context) {
    showBottomSheetDefault(
        barrierColor: Color.fromRGBO(0, 0, 0, 0.2),
        backgroundColor: AppColors.white,
        context: context,
        widget: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text(Localy.of(context)!.delete),
              onPressed: () async {
                Navigator.of(context).pop();

                await controller.removeItemId(id, (successMessage) {
                  showSnackBar(
                      message: successMessage,
                      snackBarType: SnackBarType.success);
                }, (error) {
                  showSnackBar(
                      message: error.toString(),
                      snackBarType: SnackBarType.warning);
                });
              },
            ),
            TextButton(
              child: Text(
                Localy.of(context)!.labelCancelButton,
                style: TextStyle(color: AppColors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }

  Widget _buildDropDownButton() {
    return DropdownButton<String>(
      value: controller.notificationValue,
      icon: const Icon(Icons.arrow_drop_down_outlined),
      iconSize: 30,
      underline: Container(),
      onChanged: (value) {
        controller.onChangeType(value!);
      },
      items: controller.listNotificationTypes
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
