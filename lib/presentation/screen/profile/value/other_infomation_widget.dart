import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/text_screen.dart';
import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherInformation extends StatelessWidget {
  const OtherInformation(
      {Key? key,
      required this.profileViewModel,
      required this.userInformationViewModel})
      : super(key: key);

  final ProfileViewModel profileViewModel;
  final UserInformationViewModel userInformationViewModel;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserInformationViewModel>(
        init: userInformationViewModel,
        builder: (controller) {
          final totalVideo = controller.userTotalContentModel != null
              ? controller.userTotalContentModel!.totalVideo
              : 0;
          final totalFollowing = controller.userTotalContentModel != null
              ? controller.userTotalContentModel!.totalFollowing
              : 0;
          final totalFollower = controller.totalFollower;
          return Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => _otherInfoItem(
                      Localy.of(context)!.labelFollows, '${totalFollower ?? 0}',
                      action: () {
                    // TODO(ShowFollowers): Implement show followers event.
                  }),
                ),
                Container(
                    height: 20,
                    child: VerticalDivider(
                      color: Colors.black,
                      width: 20,
                    )),
                _otherInfoItem(
                    Localy.of(context)!.followingLabel, '$totalFollowing',
                    action: () {
                  // TODO(ShowFollowing): Implement show following event.
                }),
                Container(
                    height: 20,
                    child: VerticalDivider(
                      color: Colors.black,
                      width: 20,
                    )),
                _otherInfoItem(
                  Localy.of(context)!.postText,
                  totalVideo.toString(),
                ),
              ],
            ),
          );
        });
  }

  Column _otherInfoItem(String title, String content, {Function()? action}) =>
      Column(
        children: [
          content != "null"
              ? GestureDetector(
                  onTap: action,
                  child: CommonProfileScreen().TextWidgetNormal(
                    verticalSize: 0,
                    content: content,
                    textAlign: TextAlign.center,
                    style: AppStyles.typeTextNormal()
                        .copyWith(fontWeight: FontWeight.bold),
                  ))
              : CommonProfileScreen().TextWidgetNormal(
                  verticalSize: 0,
                  content: "_",
                  textAlign: TextAlign.center,
                  style: AppStyles.typeTextNormal()
                      .copyWith(fontWeight: FontWeight.bold),
                ),
          CommonProfileScreen().TextWidgetNormal(content: title),
        ],
      );
}
