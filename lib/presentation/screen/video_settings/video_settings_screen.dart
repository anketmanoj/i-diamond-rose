import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/value/video_settings_widget_details.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/video_settings_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/widgets.dart';
import 'package:diamon_rose_app/share/widget/button_action.dart';
import 'package:diamon_rose_app/share/widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class VideoSettingsScreen extends GetView<VideoSettingsViewModel> {
  final maxLength = 150;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBarApp(
          isGradientBackground: false,
          title: Localy.of(context)!.videoSettingsTitle,
          titleColor: AppColors.white,
          iconLeft:
              Icon(Icons.arrow_back_ios, size: 24, color: AppColors.white),
          actIconLeft: Get.back),
      body: Obx(
          () => controller.isLoading.value ? Container() : _bodyBody(context)),
    );
  }

  Widget _bodyBody(BuildContext context) {
    final List<String> itemsDropDown = [
      Localy.of(context)!.anyone,
      Localy.of(context)!.followersOnly,
      Localy.of(context)!.onlyMe
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            children: [
              VideoSettingsDetail().buildThumbnail(context,
                  imageUrl: controller.thumbnailUrl.value),
              SizedBox(height: 20),
              VideoSettingsDetail().customRadioGroup(
                  context: context,
                  value: controller.valueRadioContent.value,
                  onChange: controller.onChangeRadioContent),
              SizedBox(height: 10),
              VideoSettingsDetail().textFormField(
                  focusNode: controller.titleFocusNode,
                  maxLength: 30,
                  textEditingController: controller.textTitleController,
                  onChanged: controller.onTitleChange,
                  hintText: Localy.of(context)!.requiredTitleHint,
                  errorText: controller.titleError.value ?? null),
              SizedBox(height: 10),
              Visibility(
                  visible: false,
                  child: VideoSettingsDetail().itemTextAndSwitch(
                      title: Localy.of(context)!.labelSecondaryUseOfARMaterial,
                      context: context,
                      value: false,
                      onChange: (value) {})),
              SizedBox(height: 10),
              VideoSettingsDetail().itemTextAndSwitch(
                  title: Localy.of(context)!.paidSettingLabel,
                  context: context,
                  value: controller.active.value!,
                  onChange: controller.onActiveChange),
              SizedBox(height: 10),
              Visibility(
                visible: controller.active.value!,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VideoSettingsDetail().itemSmallTextField(
                          focusNode: controller.priceFocusNode,
                          title: Localy.of(context)!.price,
                          onChange: controller.onChangeSalePrice,
                          style: TextStyle(color: Colors.white),
                          width: 100,
                          controller: controller.accuracyController,
                          errorText: controller.salePriceError.value,
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                          isDense: true,
                          keyboardType: TextInputType.number,
                          maxLength: 8,
                          maxLine: 1,
                          suffixIcon: "\u0024 ",
                          counterText: ""),
                      SizedBox(height: 20),
                      VideoSettingsDetail().itemTextAndSwitch(
                          title: Localy.of(context)!.salePeriod,
                          context: context,
                          value: controller.isSalePeriod.value!,
                          onChange: controller.onChangeSalePeriodSwitch),
                      Visibility(
                        visible: controller.isSalePeriod.value!,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                VideoSettingsDetail().customDatetimePicker(
                                  dateController:
                                      controller.startDaySaleController,
                                  startDay: null,
                                  updateDate:
                                      controller.updateStartDaySalePeriod,
                                ),
                                Text("~",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24)),
                                VideoSettingsDetail().customDatetimePicker(
                                  dateController:
                                      controller.finishDaySaleController,
                                  startDay: controller.startDaySalePeriod.value,
                                  updateDate:
                                      controller.updateFinishDaySalePeriod,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      VideoSettingsDetail().itemTextAndSwitch(
                          title: Localy.of(context)!.discount,
                          context: context,
                          value: controller.isDiscountPeriod.value!,
                          onChange: controller.onChangeDiscountSwitch),
                      Visibility(
                        visible: controller.isDiscountPeriod.value!,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                VideoSettingsDetail().customDatetimePicker(
                                    dateController:
                                        controller.startDayDiscountController,
                                    startDay: null,
                                    endDaySale:
                                        controller.finishDaySalePeriod.value,
                                    updateDate:
                                        controller.updateStartDayDiscount),
                                Text("~",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24)),
                                VideoSettingsDetail().customDatetimePicker(
                                  dateController:
                                      controller.finishDayDiscountController,
                                  startDay:
                                      controller.startDayDiscountPeriod.value,
                                  endDaySale:
                                      controller.finishDaySalePeriod.value,
                                  updateDate:
                                      controller.updateFinishDayDiscount,
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            VideoSettingsDetail().itemSmallTextField(
                              focusNode: controller.percentFocusNode,
                              title: Localy.of(context)!.discountRate,
                              width: 100,
                              onChange: controller.onChangePercentDiscount,
                              controller: controller.discountRateController,
                              style: TextStyle(color: Colors.white),
                              counterText: "",
                              suffixIcon: "\u0025 ",
                              maxLine: 1,
                              maxLength: 3,
                              keyboardType: TextInputType.number,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              errorText: controller.percentError.value,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: AppColors.white,
                        height: 2,
                        thickness: 1,
                      ),
                      SizedBox(height: 10),
                      VideoSettingsDetail().itemTextAndSwitch(
                          title: Localy.of(context)!.glamorous,
                          context: context,
                          value: controller.isGlamorous.value!,
                          onChange: controller.onChangeGlamorousSwitch),
                      Visibility(
                        visible: controller.isGlamorous.value!,
                        child: Column(
                          children: [
                            VideoSettingsDetail().itemTextAndSwitch(
                                title: Localy.of(context)!.peopleCanPurchased,
                                context: context,
                                value: controller.isAvailableNumPeople.value,
                                onChange: controller.onChangeNumPeopleSwitch),
                            heightSpace(10),
                            Visibility(
                              visible: controller.isAvailableNumPeople.value,
                              child: Column(
                                children: [
                                  VideoSettingsDetail().itemSmallTextField(
                                    focusNode: controller.numPeopleFocusNode,
                                    title: Localy.of(context)!.numPeople,
                                    width: 80,
                                    onChange: controller.onChangeNumPeople,
                                    controller: controller.numPeopleController,
                                    style: TextStyle(color: Colors.white),
                                    maxLine: 1,
                                    errorText: controller.numPeopleError.value,
                                    keyboardType: TextInputType.number,
                                    isDense: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 5),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      VideoSettingsDetail().customDatetimePicker(
                                          dateController: controller
                                              .startDayPurchaseSettingController,
                                          startDay: null,
                                          updateDate: controller
                                              .updateStartDayPurchaseSetting),
                                      Text("~",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24)),
                                      VideoSettingsDetail()
                                          .customDatetimePicker(
                                        dateController: controller
                                            .finishDayPurchaseSettingController,
                                        startDay: controller
                                            .startDayPurchaseSettingPeriod
                                            .value,
                                        updateDate: controller
                                            .updateFinishDayPurchaseSetting,
                                      )
                                    ],
                                  ),
                                  heightSpace(20),
                                  VideoSettingsDetail().itemTextAndSwitch(
                                      title: Localy.of(context)!.buyDiscount,
                                      context: context,
                                      value:
                                          controller.isSummaryDiscount.value!,
                                      onChange: controller
                                          .onChangeSummaryDiscountSwitch),
                                  heightSpace(20),
                                  Visibility(
                                    visible:
                                        controller.isSummaryDiscount.value!,
                                    child: VideoSettingsDetail()
                                        .itemSmallTextField(
                                            focusNode: controller
                                                .summaryPercentFocusNode,
                                            title: Localy.of(context)!
                                                .discountRate,
                                            onChange:
                                                controller.onChangeCuttingRate,
                                            style:
                                                TextStyle(color: Colors.white),
                                            width: 100,
                                            controller: controller
                                                .cuttingRateController,
                                            errorText: controller
                                                .summaryPercentError.value,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5),
                                            isDense: true,
                                            keyboardType: TextInputType.number,
                                            maxLength: 3,
                                            maxLine: 1,
                                            suffixIcon: "\u0025 ",
                                            counterText: ""),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(Localy.of(context)!.scopeAR,
                      style: TextStyle(color: Colors.white)),
                  Spacer(),
                  DropdownButtonHideUnderline(
                    child: Obx(() => DropdownButton<String>(
                          style: TextStyle(color: Colors.white),
                          dropdownColor: Colors.black,
                          value: itemsDropDown[
                              controller.scopeARSelected.value - 1],
                          items: itemsDropDown.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (item) {
                            controller.onSelectScopeAR(
                                itemsDropDown.indexOf(item!) + 1);
                          },
                        )),
                  )
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  VideoSettingsDetail().textFormField(
                      focusNode: controller.descFocusNode,
                      minLines: 6,
                      maxLines: 6,
                      maxLength: maxLength,
                      textEditingController:
                          controller.textDescriptionController,
                      onChanged: controller.onDescriptionChange,
                      hintText:
                          Localy.of(context)!.requiredContentDescriptionHint,
                      errorText: controller.descriptionError.value ?? null),
                  Positioned(
                    height: 20,
                    bottom: 28,
                    left: 10,
                    child: Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              controller.textDescriptionController.value =
                                  TextEditingValue(
                                text:
                                    // ignore: lines_longer_than_80_chars
                                    "${controller.textDescriptionController.text}#",
                                selection: TextSelection.fromPosition(
                                  TextPosition(
                                      offset:
                                          // ignore: lines_longer_than_80_chars
                                          "${controller.textDescriptionController.text}#"
                                              .length),
                                ),
                              );
                              controller.onDescriptionChange(
                                  // ignore: lines_longer_than_80_chars
                                  "${controller.textDescriptionController.text}");
                            },
                            style: OutlinedButton.styleFrom(
                                primary: AppColors.white,
                                textStyle: TextStyle(fontSize: 12),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.orange, width: 2)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3)),
                            child: Text(Localy.of(context)!.labelHashtag)),
                        SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              controller.textDescriptionController.value =
                                  TextEditingValue(
                                text:
                                    // ignore: lines_longer_than_80_chars
                                    "${controller.textDescriptionController.text}@",
                                selection: TextSelection.fromPosition(
                                  TextPosition(
                                      offset:
                                          // ignore: lines_longer_than_80_chars
                                          "${controller.textDescriptionController.text}@"
                                              .length),
                                ),
                              );
                              controller.onDescriptionChange(
                                  // ignore: lines_longer_than_80_chars
                                  "${controller.textDescriptionController.text}");
                            },
                            style: OutlinedButton.styleFrom(
                                primary: AppColors.white,
                                textStyle: TextStyle(fontSize: 12),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: AppColors.white)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 0)),
                            child: Text("@ ${Localy.of(context)!.mention}"))
                      ],
                    ),
                  ),
                ],
              ),
              VideoSettingsDetail().itemPublishContent(
                title: Localy.of(context)!.labelPublishContent,
                onChange: controller.onChangePublishContent,
                value: controller.isPublishContent.value,
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                    onTap: () => goTo(
                        screen: ROUTER_CATEGORY_SELECTING,
                        argument: controller.genreEntity),
                    child: Text(
                      Localy.of(context)!.titleScreenGenre,
                      style: AppStyles.typeTextNormal(color: AppColors.white),
                    )),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ButtonAction(
                    content: Localy.of(context)!.textSubmitButton,
                    action: () {
                      controller.validateBeforeSubmitting(context);
                    },
                    textStyle: AppStyles.typeTextNormal(color: AppColors.black),
                    color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
