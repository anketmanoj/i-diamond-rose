import 'package:diamon_rose_app/data/model/enum/sex.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderRadioButton extends StatelessWidget {
  const GenderRadioButton({Key? key, this.userProfileInfoViewModel})
      : super(key: key);
  final UserProfileInfoViewModel? userProfileInfoViewModel;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          genderValueWidget(
            title: Localy.of(userProfileInfoViewModel!.context!)!.genderMale,
            gender: Sex.male,
          ),
          genderValueWidget(
            title: Localy.of(userProfileInfoViewModel!.context!)!.genderFemale,
            gender: Sex.female,
          ),
          genderValueWidget(
            title: Localy.of(context)!.noAnswer,
            gender: Sex.others,
          ),
        ],
      ),
    );
  }
}

Widget genderValueWidget({String? title, Sex? gender}) {
  final UserProfileInfoViewModel userProfileInfoViewModel =
      Get.put(UserProfileInfoViewModel());
  return Row(
    children: [
      SizedBox(
          height: 30,
          child: Radio<Sex>(
              activeColor: AppColors.white,
              value: gender!,
              groupValue: userProfileInfoViewModel.sexRadioGroupValue.value,
              onChanged: userProfileInfoViewModel.changeValueRadio)),
      Text(title!, style: TextStyle(color: AppColors.white)),
    ],
  );
}
