import 'package:diamon_rose_app/data/model/enum/sex.dart';
import 'package:diamon_rose_app/data/model/phone_number.dart';
import 'package:diamon_rose_app/data/repositiory/account_repository/account_repository.dart';
import 'package:diamon_rose_app/data/repositiory/auth_repository/auth_repository.dart';
import 'package:diamon_rose_app/data/repositiory/auth_repository/common_repository.dart';
import 'package:diamon_rose_app/data/repositiory/user_repository/user_repository.dart';
import 'package:diamon_rose_app/data/value/demo_data.dart';
import 'package:diamon_rose_app/domain/entities/common_entity/country_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_sign_up_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/fcm/firebase_cloud_messaging_handler.dart';
import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/add_email/add_email_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/add_password/add_password_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info.validate.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/utils/string_utils.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class UserProfileInfoViewModel extends GetxController {
  final bool isEditProfile = LocalStorageKeys.isEditProfile;
  final nameController = TextEditingController();
  final userNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final RxString email = "".obs;
  final RxString password = "".obs;
  final RxInt gender = 0.obs;
  final Rx<int> countryId = 0.obs;
  final Rx<PhoneNum> phoneNumberItem = AppData().listCountryPhone.first.obs;
  final fullNameFocus = new FocusNode();
  final userNameFocus = new FocusNode();
  final phoneFocus = new FocusNode();
  RxString textValidatorPassword = "".obs;
  Rx<Sex> sexRadioGroupValue = Sex.male.obs;
  Rx<int> valueRadio = 0.obs;

  RxString textNationCode = "JP".obs;

  Rx<String> itemPhoneSelected = "0".obs;
  final RxString emailLabel = "".obs;

  RxBool phoneValidate = true.obs;
  RxBool nameValidate = true.obs;
  RxBool userNameValidate = true.obs;

  RxString phoneError = "".obs;
  RxString nameError = "".obs;
  RxString userNameError = "".obs;

  BuildContext? context = Get.context;
  List<CountryEntity?> listContry = [];
  Rx<UserContentModel?> userContentModel = Rx(UserContentModel());
  RxString month = StringUtils.validateDateMonth("${DateTime.now().month}").obs;
  RxString year = "${DateTime.now().year}".obs;
  RxString day = StringUtils.validateDateMonth("${DateTime.now().day}").obs;
  RxString dob = "".obs;
  List<String> _listDates = [];

  List<String> get listDates => _listDates;
  List<String> _listYears = listOfYears(FIRST_YEAR, DateTime.now().year);

  List<String> get listYears => _listYears;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void changeDateOfBirth(String? value) {
    print(value);
    dateOfBirthController.text = value!;
    update();
  }

  void changeArePhoneNumber(PhoneNum? value) {
    phoneNumberItem.value = value!;
    update();
  }

  void changeValueRadio(Sex? value) {
    sexRadioGroupValue.value = value!;
    switch (value) {
      case Sex.male:
        gender.value = 0;
        break;
      case Sex.female:
        gender.value = 1;
        break;
      case Sex.others:
        gender.value = 2;
        break;
    }
    print(gender.value);
    update();
  }

  void initData() {
    _listDates = listDate(year.value, month.value);
    if (!isEditProfile) {
      _initEditInfo();
    } else {
      _initEditProfile();
    }
    outFocusValidate();
  }

  void getCountryId(dynamic value) {
    print(value);
    countryId.value = value!;
    update();
  }

  Future<void> getCountries() async {
    CommonRepository.instance.requestCountryList(
      onStart: () {
        showLoading();
      },
      onSuccess: (response) async {
        listContry = response.items;
        if (isEditProfile) {
          countryId.value = await userContentModel.value!.countryId!;
        }
        await dismissLoading();
        update();
      },
      onError: (error) {
        showErrorConfirmDialog(context: context!, errors: error);
        dismissLoading();
      },
    );
  }

  Future<void> submitForm() async {
    if (isEditProfile) {
      final ProfileViewModel profileViewModel = Get.put(ProfileViewModel());
      late final dislayNameInput = nameController.text.trim();
      late final phoneNumberInput = phoneNumberController.text.trim();
      UserRepository.instance.requestUpdateUser(
          uid: userContentModel.value!.uid!,
          requestUserModel: UserContentModel(
            displayName: dislayNameInput,
            mobile: "${phoneNumberItem.value.countryCode}$phoneNumberInput",
            countryId: countryId.value,
            gender: gender.value,
            dateOfBirth: dob.value,
          ),
          onStart: () {
            showLoading();
          },
          reLoginCallBack: (_) async {
            await dismissLoading();
          },
          onSuccess: (response) async {
            await AccountRepository.instance.saveAccountInfo(
                response.item.copyWith(userId: response.item.id));
            profileViewModel.userContentModel.value = await response.item;
            update();
            await dismissLoading();
            await showSnackBar(
                message: Localy.of(context!)!.updateSuccessful,
                snackBarType: SnackBarType.success);
            await Future.delayed(Duration(seconds: 2));
            goBack();
          },
          onError: (error) async {
            await dismissLoading();
            await showSnackBar(
                message: error.toString(), snackBarType: SnackBarType.warning);
            return;
          });
    } else {
      late final dislayNameInput = nameController.text;
      late final userNameInput = userNameController.text;
      late final phoneNumberInput = phoneNumberController.text;
      AuthRepository.instance.requestSignUp(
          signUpModel: RequestSignUpModel(
              displayName: dislayNameInput,
              email: email.value,
              password: password.value,
              dateOfBirth: dob.value,
              gender: gender.value,
              roleCd: "user",
              countryId: countryId.value,
              mobile: "${phoneNumberItem.value.countryCode}$phoneNumberInput",
              userName: userNameInput,
              language: Intl.getCurrentLocale()),
          onStart: onStart,
          onSuccess: (userEntity) async {
            userContentModel.value = userEntity;
            await FirebaseCloudMessagingHandler.updateDeviceToken();
            await AccountRepository.instance.saveAccountInfo(userEntity);
            await goTo(screen: ROUTER_EDIT_INFO_SOCIAL);
          },
          onError: (error) {
            showErrorConfirmDialog(context: context!, errors: error);
            return;
          });
      update();
    }
  }

  void submitDisplayName() {
    fullNameFocus.addListener(() {
      late final validationResults = UserProfileInfoValidationResults(context!);
      late final nameInput = nameController.text.trim();
      if (!fullNameFocus.hasFocus) {
        if (!validationResults.validateNotNull(nameInput).isValid) {
          nameError.value =
              validationResults.validateNotNull(nameInput).errorMessage ?? "";
          update();
          return;
        }
        nameError.value = "";
        update();
      }
    });
  }

  void submitUserName() {
    userNameFocus.addListener(() {
      late final validationResults = UserProfileInfoValidationResults(context!);
      late final userNameInput = userNameController.text.trim();
      if (!userNameFocus.hasFocus) {
        if (!validationResults.validateUserName(userNameInput).isValid) {
          userNameError.value =
              validationResults.validateUserName(userNameInput).errorMessage ??
                  "";
          update();
          return;
        }
        userNameError.value = "";
        update();
      }
    });
  }

  void submitPhone() {
    phoneFocus.addListener(() {
      late final validationResults = UserProfileInfoValidationResults(context!);
      late final phoneInput = phoneNumberController.text.trim();
      if (!phoneFocus.hasFocus) {
        if (!validationResults.validatePhoneNumber(phoneInput).isValid) {
          phoneError.value =
              validationResults.validatePhoneNumber(phoneInput).errorMessage ??
                  "";
          update();
          return;
        }
        phoneError.value = "";
        update();
      }
    });
  }

  bool isActive() {
    late final validationResults = UserProfileInfoValidationResults(context!);
    late final displayNameInput = nameController.text;
    late final userNameInput = userNameController.text;
    late final phoneNumberInput = phoneNumberController.text;
    return validationResults.validateForm(
        displayName: displayNameInput,
        username: userNameInput,
        phoneNumber: phoneNumberInput,
        isEditProfile: isEditProfile);
  }

  void _initEditInfo() {
    final AddEmailViewModel addEmailViewModel = Get.put(AddEmailViewModel());
    final AddPasswordViewModel addPasswordViewModel =
        Get.put(AddPasswordViewModel());
    email.value = addEmailViewModel.emailController.text;
    password.value = addPasswordViewModel.passConfirmController.text;
    phoneNumberItem.value = AppData().listCountryPhone.first;
    dob.value = "${year.value}-${month.value}-${day.value}";
  }

  Future<void> _initEditProfile() async {
    final getUserInfo = await AccountRepository.instance.accountInfo();
    userContentModel.value = UserContentModel.fromJson(getUserInfo);
    emailLabel.value = userContentModel.value!.email ?? "";
    nameController.text = userContentModel.value!.displayName ?? "";
    initCountryPhone(userContentModel.value!.mobile ?? "");
    phoneNumberController.text =
        userContentModel.value!.mobile?.substring(3) ?? "";
    initGenderRadio(userContentModel.value!.gender ?? 0);
    year.value = userContentModel.value!.dateOfBirth!.substring(0, 4);
    month.value = userContentModel.value!.dateOfBirth!.substring(5, 7);
    day.value = userContentModel.value!.dateOfBirth!.substring(8, 10);
    dob.value = "${year.value}-${month.value}-${day.value}";
    // dateOfBirthController.text =
    //     StringUtils.dateFormatter(userContentModel.value!.dateOfBirth ?? "");
  }

  void initGenderRadio(int sex) {
    gender.value = sex;
    switch (sex) {
      case 0:
        sexRadioGroupValue.value = Sex.male;
        break;
      case 1:
        sexRadioGroupValue.value = Sex.female;
        break;
      case 2:
        sexRadioGroupValue.value = Sex.others;
        break;
    }
    update();
  }

  /// init Country code when get user
  void initCountryPhone(String phone) {
    if (phone.isEmpty) {
      phoneNumberItem.value = AppData().listCountryPhone.first;
    } else {
      final String userCountryCode = phone.substring(0, 3);
      for (int i = 0; i < AppData().listCountryPhone.length; i++) {
        if (userCountryCode == AppData().listCountryPhone[i].countryCode) {
          phoneNumberItem.value = AppData().listCountryPhone[i];
        }
      }
    }
  }

  void goToEditSocial() => goTo(screen: ROUTER_EDIT_INFO_SOCIAL);

  void outFocusValidate() {
    submitDisplayName();
    submitUserName();
    submitPhone();
  }

  void changeYear(String? value) {
    year.value = value!;
    _listDates = listDate(year.value, month.value);
    if (!_listDates.contains(day.value)) {
      day.value = _listDates.last;
    }
    dob.value = "${year.value}-${month.value}-${day.value}";
    update();
  }

  void changeMonth(String? value) {
    month.value = value!;
    _listDates = listDate(year.value, month.value);
    if (!_listDates.contains(day.value)) {
      day.value = _listDates.last;
    }
    dob.value = "${year.value}-${month.value}-${day.value}";
    update();
  }

  void changeDate(String? value) {
    day.value = value!;
    dob.value = "${year.value}-${month.value}-${day.value}";
    update();
  }
}

List<String> listDate(String year, String month) =>
    listOfDates(int.parse(year), int.parse(month))
        .map((e) => StringUtils.validateDateMonth(e.toString()))
        .toList();
