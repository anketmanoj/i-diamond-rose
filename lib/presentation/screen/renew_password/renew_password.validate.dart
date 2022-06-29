import 'package:diamon_rose_app/data/validation/validation_result.dart';
import 'package:diamon_rose_app/share/localizations/l10n/localy.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/cupertino.dart';

class RenewPasswordValidationResults {
  RenewPasswordValidationResults(BuildContext context) {
    this.context = context;
  }

  late BuildContext context;

  ValidationResult validatePassword(String password) {
    if (ValidateUtils.isNullEmptyOrWhitespace(password)) {
      return ValidationResult.error(Localy.of(context)!.passwordEmptyLabel);
    }

    if (!ValidateUtils.isContainedNumberOrNonWord(password)) {
      return ValidationResult.error(Localy.of(context)!.numberNonWordError);
    }
    if (!ValidateUtils.isContainedLowerUpperCase(password)) {
      return ValidationResult.error(Localy.of(context)!.alphaError);
    }
    if (!ValidateUtils.isBetween8to20(password)) {
      return ValidationResult.error(Localy.of(context)!.lengthError);
    }
    return ValidationResult.ok();
  }

  bool validateForm(
      {required String password, required String confirmPassword}) {
    final passwordValid = validatePassword(password).isValid;
    final confirmPasswordValid = validatePassword(confirmPassword).isValid;

    return passwordValid && confirmPasswordValid;
  }
}
