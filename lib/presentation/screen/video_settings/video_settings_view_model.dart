import 'package:diamon_rose_app/data/model/video_setting.dart';
import 'package:diamon_rose_app/data/repositiory/video_setting/video_setting_repository.dart';
import 'package:diamon_rose_app/domain/entities/enum/video_setting_type.dart';
import 'package:diamon_rose_app/domain/entities/genre_entity/genre_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/video_setting_request/request_video_setting_model.dart';
import 'package:diamon_rose_app/domain/entities/video_setting_entity/video_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/video_setting_entity/video_setting_response_entity.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/value/video_settings_widget_details.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/video_settings.validate.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

enum Sex { male, female, others }

class VideoSettingsViewModel extends GetxController
    with WidgetsBindingObserver {
  final context = Get.context;
  RxString title = "".obs;
  RxString description = "".obs;
  Rx<String?> salePrice = "".obs;
  Rx<String?> discountPercent = "".obs;
  Rx<String?> numPeople = "".obs;
  Rx<String?> cuttingRate = "".obs;
  Rx<String?> titleError = Rx<String?>(null);
  Rx<String?> descriptionError = Rx<String?>(null);
  Rx<String?> percentError = Rx<String?>(null);
  Rx<String?> summaryPercentError = Rx<String?>(null);
  Rx<String?> salePriceError = Rx<String?>(null);
  Rx<String?> numPeopleError = Rx<String?>(null);
  Rx<bool?> active = false.obs;
  RxBool paid = false.obs;

  // ignore: type_annotate_public_apis
  final data = Get.arguments;
  late Rx<DateTime?> startDaySalePeriod = Rx<DateTime>(DateTime.now());
  late Rx<DateTime?> finishDaySalePeriod = Rx<DateTime>(DateTime.now());
  late Rx<DateTime?> startDayDiscountPeriod = Rx<DateTime>(DateTime.now());
  late Rx<DateTime?> finishDayDiscountPeriod = Rx<DateTime>(DateTime.now());
  late Rx<DateTime?> startDayPurchaseSettingPeriod =
      Rx<DateTime>(DateTime.now());
  late Rx<DateTime?> finishDayPurchaseSettingPeriod =
      Rx<DateTime>(DateTime.now());
  RxString paidValue = "".obs;
  RxString thumbnailUrl = RxString("");

  Rx<int> scopeARSelected = 1.obs;

  Rx<bool> isLoading = true.obs;
  Rx<bool?> isSalePeriod = true.obs;
  Rx<bool?> isDiscountPeriod = true.obs;
  Rx<bool> isAvailableNumPeople = true.obs;
  Rx<bool?> isGlamorous = true.obs;
  Rx<bool?> isCuttingRate = true.obs;
  Rx<bool> isPublishContent = true.obs;
  Rx<bool?> isSummaryDiscount = true.obs;

  Rx<VideoType> videoType = VideoType.FREE.obs;
  Rx<OptionRadio> valueRadioContent = OptionRadio.packageContent.obs;
  Rx<NumberFormat> oCcy = NumberFormat("#,##0.00", "en_US").obs;

  Rx<VideoSettingResponseEntity> videoSettingResponse =
      VideoSettingResponseEntity().obs;
  Rx<VideoResponseEntity> videoResponse = VideoResponseEntity().obs;
  RxList<GenreEntity> _genreEntity = RxList<GenreEntity>([]);

  List<GenreEntity> get genreEntity => _genreEntity;

  TextEditingController textTitleController = TextEditingController(text: "");
  TextEditingController textDescriptionController =
      TextEditingController(text: "");
  TextEditingController accuracyController = TextEditingController(text: "");
  TextEditingController discountRateController =
      TextEditingController(text: "");
  TextEditingController numPeopleController = TextEditingController(text: "");
  TextEditingController cuttingRateController = TextEditingController(text: "");

  TextEditingController startDaySaleController =
      TextEditingController(text: "");
  TextEditingController finishDaySaleController =
      TextEditingController(text: "");

  TextEditingController startDayDiscountController =
      TextEditingController(text: "");
  TextEditingController finishDayDiscountController =
      TextEditingController(text: "");

  TextEditingController startDayPurchaseSettingController =
      TextEditingController(text: "");
  TextEditingController finishDayPurchaseSettingController =
      TextEditingController(text: "");
  late RequestVideoSettingModel requestVideoSettingModel =
      new RequestVideoSettingModel();

  final FocusNode priceFocusNode = FocusNode();
  final FocusNode percentFocusNode = FocusNode();
  final FocusNode summaryPercentFocusNode = FocusNode();
  final FocusNode titleFocusNode = FocusNode();
  final FocusNode descFocusNode = FocusNode();
  final FocusNode numPeopleFocusNode = FocusNode();

  @override
  void onInit() {
    super.onInit();
    _init();
    getVideoSetting();
  }

  void _init() {
    final validationResults = VideoSettingsValidationResults(context!);

    titleFocusNode.addListener(() {
      if (!titleFocusNode.hasFocus) {
        if (ValidateUtils.isNullEmptyOrWhitespace(textTitleController.text)) {
          titleError.value = Localy.of(context!)!.titleVideoSettingRequired;
        } else {
          titleError.value = null;
        }
      }
    });

    descFocusNode.addListener(() {
      if (!descFocusNode.hasFocus) {
        if (ValidateUtils.isNullEmptyOrWhitespace(
            textDescriptionController.text)) {
          descriptionError.value =
              Localy.of(context!)!.descriptionVideoSettingRequired;
        }
      } else {
        descriptionError.value = null;
      }
    });
    priceFocusNode.addListener(() {
      if (!priceFocusNode.hasFocus) {
        if (validationResults.validateSalePrice(
            salePrice: StringUtils.removeExp(accuracyController.text, ","))) {
          salePriceError.value = Localy.of(context!)!.inValidPrice;
        } else {
          salePriceError.value = null;
          accuracyController.text =
              StringUtils.salePriceFormat(accuracyController.text);
        }
      }
    });
    percentFocusNode.addListener(() {
      if (!percentFocusNode.hasFocus) {
        if (validationResults.validatePercent(
            percent: discountRateController.text)) {
          percentError.value = Localy.of(context!)!.invalidDiscountPercent;
        } else {
          percentError.value = null;
          discountRateController.text =
              StringUtils.removeFirstZeros(discountRateController.text);
        }
      }
    });
    summaryPercentFocusNode.addListener(() {
      if (!summaryPercentFocusNode.hasFocus) {
        if (validationResults.validatePercent(
            percent: cuttingRateController.text)) {
          summaryPercentError.value =
              Localy.of(context!)!.invalidDiscountPercent;
        } else {
          summaryPercentError.value = null;
          cuttingRateController.text =
              StringUtils.removeFirstZeros(cuttingRateController.text);
        }
      }
    });
    numPeopleFocusNode.addListener(() {
      final String _numPeople =
          StringUtils.removeFirstZeros(numPeopleController.text);
      if (!numPeopleFocusNode.hasFocus) {
        numPeopleController.text = _numPeople;
        if (validationResults.validateNumPeople(numPeople: _numPeople)) {
          numPeopleError.value = Localy.of(context!)!.inValidNumPeople;
        }
      } else {
        numPeopleError.value = null;
      }
    });
  }

  // ignore: use_setters_to_change_properties
  void onTitleChange(String value) {
    if (value.trim().isEmpty) {
      textTitleController.clear();
      title.value = '';
      return;
    }
    title.value = value;
  }

  // ignore: use_setters_to_change_properties
  void onDescriptionChange(String value) {
    description.value = value;
  }

  // ignore: use_setters_to_change_properties, avoid_positional_boolean_parameters
  void onActiveChange(bool isActive) {
    active.value = isActive;
    if (isActive) {
      isSalePeriod.value = false;
    }
  }

  void onChangeSalePrice(String value) {
    salePrice.value = accuracyController.text;
  }

  // ignore: use_setters_to_change_properties
  void onChangePercentDiscount(String value) {
    discountPercent.value = value;
  }

  // ignore: use_setters_to_change_properties
  void onChangeNumPeople(String value) {
    numPeople.value = value;
  }

  // ignore: use_setters_to_change_properties
  void onChangeCuttingRate(String value) {
    cuttingRate.value = value;
  }

  // ignore: use_setters_to_change_properties, avoid_positional_boolean_parameters
  void onChangeGlamorousSwitch(bool value) {
    isGlamorous.value = value;
  }

  // ignore: use_setters_to_change_properties, avoid_positional_boolean_parameters
  void onChangeNumPeopleSwitch(bool value) {
    isAvailableNumPeople.value = value;
  }

  // ignore: use_setters_to_change_properties, avoid_positional_boolean_parameters
  void onChangeCuttingRateSwitch(bool value) {
    isCuttingRate.value = value;
  }

  // ignore: use_setters_to_change_properties, avoid_positional_boolean_parameters
  void onChangeSummaryDiscountSwitch(bool value) {
    isSummaryDiscount.value = value;
  }

  void onChangeRadioContent(OptionRadio? value) {
    valueRadioContent.value = value!;
  }

  // ignore: use_setters_to_change_properties, avoid_positional_boolean_parameters
  void onChangePublishContent(bool? value) {
    isPublishContent.value = value!;
  }

  void validateBeforeSubmitting(BuildContext context) {
    //handleClearErrorForm();
    final validationResults = VideoSettingsValidationResults(context);

    final titleInput = textTitleController.value.text;
    final descriptionInput = textDescriptionController.value.text;
    if (!validationResults.validateForm(
        title: titleInput, description: descriptionInput)) {
      if (ValidateUtils.isNullEmptyOrWhitespace(titleInput)) {
        titleError.value = Localy.of(context)!.titleVideoSettingRequired;
      }
      if (ValidateUtils.isNullEmptyOrWhitespace(descriptionInput)) {
        descriptionError.value =
            Localy.of(context)!.descriptionVideoSettingRequired;
      }
      return;
    }

    if (active.value!) {
      if (validationResults.validateSalePrice(
          salePrice: accuracyController.text)) {
        salePriceError.value = Localy.of(context)!.inValidPrice;
        return;
      }
      if (isDiscountPeriod.value!) {
        if (validationResults.validatePercent(
            percent: discountRateController.text)) {
          percentError.value = Localy.of(context)!.invalidDiscountPercent;
          return;
        }
      }
      if (isAvailableNumPeople.value) {
        if (validationResults.validateNumPeople(
            numPeople:
                StringUtils.removeFirstZeros(numPeopleController.text))) {
          numPeopleError.value = Localy.of(context)!.inValidNumPeople;
          return;
        }
      }
      if (isSummaryDiscount.value!) {
        if (validationResults.validatePercent(
            percent: cuttingRateController.text)) {
          summaryPercentError.value =
              Localy.of(context)!.invalidDiscountPercent;
          return;
        }
      }
      if (salePriceError.value != null ||
          percentError.value != null ||
          summaryPercentError.value != null ||
          numPeopleError.value != null) {
        return;
      }
    }

    showConfirmDialog(
        context: context,
        message: Localy.of(context)!.labelConfirmVideoSetting,
        action: updateVideoSetting);
  }

  void updateVideoSetting() {
    VideoSettingRepository.instance.postVideoSettings(
        data: dataUpdateVideoSetting(),
        requestParam: {},
        onStart: () {
          showLoading();
        },
        onSuccess: (val) async {
          await dismissLoading();
          Get.until((route) => Get.currentRoute == ROUTER_MAIN);
          await Get.put(HomeViewModel())
              .setCurrentScreen(int.parse(TAB_PROFILE_INDEX));
        },
        onError: (err) async {
          await dismissLoading();
          await showSnackBar(
              message: err.toString(), snackBarType: SnackBarType.success);
        });
  }

  void updateUI() {
    isLoading.value = false;
    if (videoSettingResponse.value.videoType == 2) {
      active.value = true;
    } else {
      active.value = false;
    }
    valueRadioContent.value = videoSettingResponse.value.contentType == 2
        ? OptionRadio.packageContent
        : OptionRadio.materialContent;
    isSalePeriod.value = videoSettingResponse.value.isSalePeriod ?? false;
    isDiscountPeriod.value =
        videoSettingResponse.value.isDiscountPeriod ?? false;
    isGlamorous.value = videoSettingResponse.value.isGlamorous ?? false;
    isAvailableNumPeople.value =
        videoSettingResponse.value.isAvailableNumberPurchase ?? false;
    isSummaryDiscount.value =
        videoSettingResponse.value.isSummaryDiscount ?? false;
    isPublishContent.value = videoSettingResponse.value.isPublish ?? false;
    title.value = videoResponse.value.videoCaption;
    description.value = videoResponse.value.videoDesc;
    startDaySalePeriod.value =
        videoSettingResponse.value.saleFromDate ?? DateTime.now();
    finishDaySalePeriod.value =
        videoSettingResponse.value.saleToDate ?? DateTime.now();
    startDayDiscountPeriod.value =
        videoSettingResponse.value.discountFromDate ?? DateTime.now();
    finishDayDiscountPeriod.value =
        videoSettingResponse.value.discountToDate ?? DateTime.now();
    startDayPurchaseSettingPeriod.value =
        videoSettingResponse.value.purchaseSettingFromDate ?? DateTime.now();
    finishDayPurchaseSettingPeriod.value =
        videoSettingResponse.value.purchaseSettingToDate ?? DateTime.now();

    scopeARSelected.value =
        (videoSettingResponse.value.contentPublicRange == null ||
                videoSettingResponse.value.contentPublicRange == 0)
            ? 1
            : videoSettingResponse.value.contentPublicRange!;

    textTitleController.value =
        TextEditingValue(text: videoResponse.value.videoCaption);
    textDescriptionController.value =
        TextEditingValue(text: videoResponse.value.videoDesc);
    accuracyController.value = TextEditingValue(
        text: videoSettingResponse.value.price == null
            ? "0"
            : videoSettingResponse.value.price!.round().toString());
    discountRateController.value = TextEditingValue(
        text: videoSettingResponse.value.discountPercent == null
            ? "0"
            : videoSettingResponse.value.discountPercent!.round().toString());
    numPeopleController.value = TextEditingValue(
        text: videoSettingResponse.value.numberPurchase == null
            ? "0"
            : videoSettingResponse.value.numberPurchase!.round().toString());
    cuttingRateController.value = TextEditingValue(
        text: videoSettingResponse.value.summaryDiscountPercent == null
            ? "0"
            : videoSettingResponse.value.summaryDiscountPercent!
                .round()
                .toString());

    startDaySaleController.value = TextEditingValue(
        text: videoSettingResponse.value.saleFromDate == null
            ? DateTime.now().toString()
            : videoSettingResponse.value.saleFromDate.toString());
    finishDaySaleController.value = TextEditingValue(
        text: videoSettingResponse.value.saleToDate == null
            ? DateTime.now().toString()
            : videoSettingResponse.value.saleToDate.toString());

    startDayDiscountController.value = TextEditingValue(
        text: videoSettingResponse.value.discountFromDate == null
            ? DateTime.now().toString()
            : videoSettingResponse.value.discountFromDate.toString());
    finishDayDiscountController.value = TextEditingValue(
        text: videoSettingResponse.value.discountToDate == null
            ? DateTime.now().toString()
            : videoSettingResponse.value.discountToDate.toString());

    startDayPurchaseSettingController.value = TextEditingValue(
        text: videoSettingResponse.value.purchaseSettingFromDate == null
            ? DateTime.now().toString()
            : videoSettingResponse.value.purchaseSettingFromDate.toString());
    finishDayPurchaseSettingController.value = TextEditingValue(
        text: videoSettingResponse.value.purchaseSettingToDate == null
            ? DateTime.now().toString()
            : videoSettingResponse.value.purchaseSettingToDate.toString());

    thumbnailUrl.value = videoResponse.value.thumbnailUrl ?? '';
  }

  RequestVideoSettingModel dataUpdateVideoSetting() {
    final String _price = StringUtils.removeExp(accuracyController.text, "");
    if (!active.value!) {
      accuracyController.text = "0";
      isGlamorous.value = false;
      isSalePeriod.value = false;
      isDiscountPeriod.value = false;
    }
    if (!isGlamorous.value!) {
      isAvailableNumPeople.value = false;
    }
    return requestVideoSettingModel.copyWith(
        discountFromDate: isDiscountPeriod.value!
            ? dateTimeString(startDayDiscountPeriod.value!)
            : "",
        discountToDate: isDiscountPeriod.value!
            ? dateTimeString(finishDayDiscountPeriod.value!)
            : "",
        saleFromDate: isSalePeriod.value!
            ? dateTimeString(startDaySalePeriod.value!)
            : "",
        saleToDate: isSalePeriod.value!
            ? dateTimeString(finishDaySalePeriod.value!)
            : "",
        isDiscountPeriod: isDiscountPeriod.value,
        isSalePeriod: isSalePeriod.value,
        price: active.value! ? double.parse(_price.isEmpty ? "0" : _price) : 0,
        discountPercent: isDiscountPeriod.value!
            ? double.parse(discountRateController.text.isEmpty
                ? "0"
                : discountRateController.text)
            : 0,
        videoDesc: description.value,
        videoId: videoResponse.value.id,
        videoTitle: title.value.trim(),
        videoType:
            active.value! ? VideoSettingType.paid : VideoSettingType.free,
        isGlamorous: isGlamorous.value,
        isAvailableNumberPurchase: isAvailableNumPeople.value,
        numberPurchase: isAvailableNumPeople.value
            ? double.parse(numPeopleController.text.isEmpty
                ? "0"
                : numPeopleController.text)
            : 0,
        summaryDiscountPercent: isAvailableNumPeople.value
            ? double.parse(cuttingRateController.text.isEmpty
                ? "0"
                : cuttingRateController.text)
            : 0,
        purchaseSettingFromDate: isAvailableNumPeople.value
            ? dateTimeString(startDayPurchaseSettingPeriod.value!)
            : "",
        purchaseSettingToDate: isAvailableNumPeople.value
            ? dateTimeString(finishDayPurchaseSettingPeriod.value!)
            : "",
        contentPublicRange: scopeARSelected.value,
        isARContent: false,
        isFreeContent: false,
        isPublish: isPublishContent.value,
        isSummaryDiscount: isSummaryDiscount.value,
        contentType:
            valueRadioContent.value == OptionRadio.packageContent ? 2 : 1);
  }

  void showConfirmSuccessDialog(BuildContext context) {
    Get.defaultDialog(
        content: SizedBox(height: 5),
        titlePadding: EdgeInsets.all(20),
        title: Localy.of(context)!.updateSuccessful,
        titleStyle: TextStyle(fontSize: 16),
        textConfirm: Localy.of(context)!.labelOkButtonJP,
        confirmTextColor: AppColors.purple02,
        onConfirm: Get.back);
  }

  void handleClearErrorForm() {
    titleError.value = null;
    descriptionError.value = null;
    percentError.value = null;
    salePriceError.value = null;
  }

  void onSelectScopeAR(int? value) {
    scopeARSelected.value = value!;
  }

  // ignore: avoid_positional_boolean_parameters, use_setters_to_change_properties
  void onChangeSalePeriodSwitch(bool? value) {
    isSalePeriod.value = value;
  }

  // ignore: avoid_positional_boolean_parameters, use_setters_to_change_properties
  void onChangeDiscountSwitch(bool? value) {
    isDiscountPeriod.value = value;
  }

  // ignore: use_setters_to_change_properties
  void updateStartDaySalePeriod(String? day) {
    final val = DateTime.parse(day!);
    startDaySalePeriod.value = val;
  }

  // ignore: use_setters_to_change_properties
  void updateFinishDaySalePeriod(String? day) {
    final val = DateTime.parse(day!);
    finishDaySalePeriod.value = val;
  }

  // ignore: use_setters_to_change_properties
  void updateStartDayDiscount(String? day) {
    final val = DateTime.parse(day!);
    startDayDiscountPeriod.value = val;
  }

  // ignore: use_setters_to_change_properties
  void updateFinishDayDiscount(String? day) {
    final val = DateTime.parse(day!);
    finishDayDiscountPeriod.value = val;
  }

  void updateStartDayPurchaseSetting(String? day) {
    final val = DateTime.parse(day!);
    startDayPurchaseSettingPeriod.value = val;
  }

  void updateFinishDayPurchaseSetting(String? day) {
    final val = DateTime.parse(day!);
    finishDayPurchaseSettingPeriod.value = val;
  }

  void formatMoney(String val) {
    oCcy.value.format(val);
  }

  Future<VideoSetting?> getVideoSetting() async {
    final param = Map<String, dynamic>();
    param["videoId"] = data ?? 0;
    return await VideoSettingRepository.instance.getVideoSetting(
        requestParam: param,
        onStart: () {
          showLoading();
        },
        onSuccess: (val) async {
          await dismissLoading();
          videoSettingResponse.value = VideoSettingResponseEntity.fromJson(
              val["item"]["videoSettingDTO"]);
          videoResponse.value =
              VideoResponseEntity.fromJson(val["item"]["videoDTO"]);
          _genreEntity.value = List<GenreEntity>.from(
              val["item"]["genres"].map((x) => GenreEntity.fromJson(x)));
          requestVideoSettingModel =
              requestVideoSettingModel.copyWith(genres: _genreEntity);
          updateUI();
          print(videoSettingResponse.toString());
        },
        onError: (err) async {
          await dismissLoading();
          await Get.defaultDialog(
              title: err[0],
              onCancel: Get.back,
              content: Padding(padding: EdgeInsets.all(5)));
          return;
        });
  }

  String dateTimeString(DateTime date) {
    return DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(date);
  }
}
