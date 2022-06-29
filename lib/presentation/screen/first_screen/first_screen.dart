import 'package:diamon_rose_app/presentation/screen/first_screen/first_screen_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  final controller = Get.put(FirstScreenViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Spacer(),
          Image.asset(
            "assets/images/gif/loading.gif",
          ),
          SizedBox(
            height: heightScreen(percent: 2),
          ),
          Text(
            Localy.of(context)!.loadingFirstLaunchLabel,
            textAlign: TextAlign.center,
            style: AppStyles.typeText18(),
          ),
          Spacer(),
        ],
      )),
    );
  }
}
