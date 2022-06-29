import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/navigation/router.dart';
import 'package:diamon_rose_app/presentation/screen/fcm_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/widget/custom_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Application extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
    _initLoading();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      theme: _applicationTheme(),
      defaultTransition: Transition.fadeIn,
      builder: (context, child) {
        Get.put(FcmViewModel(context: context));
        return FlutterEasyLoading(child: child);
      },
      initialRoute: ROUTER_SPLASH_SCREEN,
      getPages: Routers.route,
      locale: Locale.fromSubtags(languageCode: Intl.getCurrentLocale()),
      supportedLocales: Localy.supportedLocales,
      localizationsDelegates: Localy.localizationsDelegates,
    );
  }

  ThemeData _applicationTheme() => ThemeData(
        primarySwatch: AppColors.purpleMaterial,
        appBarTheme: AppBarTheme(color: AppColors.white),
      );

  void _initLoading() => EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 3000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..maskType = EasyLoadingMaskType.black
    ..indicatorColor = Colors.white
    ..loadingStyle = EasyLoadingStyle.light
    ..toastPosition = EasyLoadingToastPosition.bottom
    ..indicatorSize = 45
    ..radius = 10
    ..fontSize = 14
    ..maskColor = Colors.black.withOpacity(0.5)
    ..customAnimation = CustomAnimation()
    ..userInteractions = false;
}
