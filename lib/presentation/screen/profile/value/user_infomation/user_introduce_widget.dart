import 'package:diamon_rose_app/presentation/screen/profile/value/user_infomation/user_information_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserIntroduce extends StatefulWidget {
  const UserIntroduce({Key? key}) : super(key: key);

  @override
  State<UserIntroduce> createState() => _UserIntroduceState();
}

class _UserIntroduceState extends State<UserIntroduce> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserInformationViewModel>(
        builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 17),
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: AppColors.grey))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      child: Text(
                    controller.bio.value,
                  )),
                  SizedBox(width: 5),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 24),
                    child: Visibility(
                        visible: controller.isLocalUser!,
                        child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () => {showDialogEnterBio(controller)},
                            child: Icon(
                              Icons.edit,
                            ))),
                  ),
                ])));
  }

  void showDialogEnterBio(UserInformationViewModel userInformationViewModel) {
    Get.defaultDialog(
        radius: 2,
        title: Localy.of(context)!.updateBio,
        content: Container(
            height: 200,
            width: widthScreen(),
            child: TextFormField(
                controller: userInformationViewModel.textBioController,
                maxLines: 6,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: Localy.of(context)!.enterBio,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(2))),
                ))),
        cancel: OutlinedButton(
            onPressed: Get.back, child: Text(Localy.of(context)!.cancel)),
        confirm: ElevatedButton(
            onPressed: () async {
              await userInformationViewModel
                  .saveBio(userInformationViewModel.textBioController!.text);
              Get.back();
            },
            child: Text(Localy.of(context)!.save)));
  }
}
