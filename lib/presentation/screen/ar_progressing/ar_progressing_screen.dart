import 'package:diamon_rose_app/presentation/screen/ar_progressing/ar_progressing_view_model.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class ArProgressingScreen extends GetView<ArProgressingViewModel> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ArProgressingViewModel(),
        builder: (builder) {
          return Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.img_ar_progressing_jpeg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: CircularProgressIndicator(
                          color: AppColors.purple02,
                          strokeWidth: 10,
                        )),
                    Container(
                      height: 230,
                      width: 314,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              AppColors.purple03,
                              AppColors.purple02.withOpacity(0.15),
                            ],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Center(
                          child: Text(
                            Localy.of(context)!.textArProgressing,
                            textAlign: TextAlign.center,
                            style: AppStyles.typeText18(color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
