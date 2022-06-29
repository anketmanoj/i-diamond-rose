import 'package:diamon_rose_app/presentation/screen/lost_network_screen/lost_network_view_model.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LostNetworkScreen extends StatelessWidget {
  final controller = Get.put(LostNetWorkViewModel());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: controller.pullRefresh,
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            Spacer(),
            Image.asset(
              "assets/images/png/network.png",
            ),
            SizedBox(
              height: heightScreen(percent: 2),
            ),
            Text(
              Localy.of(context)!.lostNetWorkLabel,
              textAlign: TextAlign.center,
              style: AppStyles.typeText18(),
            ),
            OutlinedButton(
                onPressed: controller.pullRefresh, child: Icon(Icons.refresh)),
            Spacer(),
          ],
        )),
      ),
    );
  }
}
