import 'package:diamon_rose_app/data/validation/validation_result.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserProfileInfoValidationResults {
  UserProfileInfoValidationResults(BuildContext context) {
    this.context = context;
  }

  late BuildContext context;

  ValidationResult validateNotNull(
    String value,
  ) {
    if (ValidateUtils.isNullEmptyOrWhitespace(value)) {
      return ValidationResult.error(Localy.of(context)!.userNameEmptyErrorText);
    }

    return ValidationResult.ok();
  }

  ValidationResult validatePhoneNumber(String phoneNumber) {
    if (ValidateUtils.validatePhone(phoneNumber) != true) {
      return ValidationResult.error(Localy.of(context)!.phoneNumberHint);
    }
    return ValidationResult.ok();
  }

  bool validateForm(
      {required String username,
      required String displayName,
      required String phoneNumber,
      required bool isEditProfile}) {
    final usernameValid = validateUserName(username).isValid;
    final displayNameValid = validateNotNull(displayName).isValid;
    final phoneNumberValid = validatePhoneNumber(phoneNumber).isValid;
    if (isEditProfile) {
      return displayNameValid && phoneNumberValid;
    }
    return usernameValid && displayNameValid && phoneNumberValid;
  }

  ValidationResult validateUserName(String value) {
    if (ValidateUtils.isNullEmptyOrWhitespace(value)) {
      return ValidationResult.error(Localy.of(context)!.userNameHint);
    }
    if (ValidateUtils.containSpace(value)) {
      return ValidationResult.error(Localy.of(context)!.invalidUserNameSpace);
    }
    if (ValidateUtils.isBetween8to13(value)) {
      return ValidationResult.error(Localy.of(context)!.invalidUserNameLength);
    }

    return ValidationResult.ok();
  }
}
