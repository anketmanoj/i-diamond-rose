import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/widget/button_icon_left.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';

class SignUpCompleteView extends StatelessWidget {
  const SignUpCompleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Column(
      children: [
        Spacer(),
        Center(
          child: Text(
            Localy.of(context)!.wellComeText,
            style: AppStyles.typeBold22(color: AppColors.white, size: 20),
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Align(
              heightFactor: 3,
              alignment: Alignment.center,
              child: Text(
                Localy.of(context)!.registerCompleterHint,
                textAlign: TextAlign.center,
                style: AppStyles.typeText22(color: AppColors.white, size: 18),
              ),
            )),
        Spacer(),
        Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 50,
              child: ButtonIconLeft(
                content: Localy.of(context)!.startButtonHint,
                textStyle:
                    AppStyles.typeText22(color: AppColors.white, size: 16),
                action: () {
                  LocalStorageKeys.isEditProfile = false;
                  goTo(screen: ROUTER_EDIT_INFO);
                },
                radius: 40,
                color: AppColors.black,
              ),
            )),
      ],
    ));
  }
}
