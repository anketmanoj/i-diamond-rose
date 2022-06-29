import 'package:diamon_rose_app/presentation/screen/splash_screen/splash_screen_view_model.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenViewModel());
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppImages.img_background),
              fit: BoxFit.cover,
            )),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.img_gd_logo,
              height: 200,
              width: 300,
            ),
          ))
        ],
      ),
    );
  }
}
