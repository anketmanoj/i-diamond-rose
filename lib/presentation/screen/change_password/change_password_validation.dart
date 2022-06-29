import 'package:diamon_rose_app/data/validation/validation_result.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangePasswordValidationResults {
  ChangePasswordValidationResults(BuildContext context) {
    this.context = context;
  }

  late BuildContext context;

  ValidationResult validationCurrentPass(String currentPass) {
    if (ValidateUtils.isNullEmptyOrWhitespace(currentPass)) {
      return ValidationResult.error(Localy.of(context)!.passwordEmptyLabel);
    }
    return ValidationResult.ok();
  }

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

  ValidationResult validateConfirmPassword(
      String password, String confirmPassword) {
    if (password != confirmPassword) {
      return ValidationResult.error(Localy.of(context)!.incorrectConfirmPass);
    }

    return ValidationResult.ok();
  }

  bool validateForm(
      {required String newPassword,
      required String confirmPassword,
      required String currentPassword}) {
    final passwordValid = validatePassword(newPassword).isValid;
    final confirmPasswordValid =
        validateConfirmPassword(newPassword, confirmPassword).isValid;
    final currentPasswordValid = validationCurrentPass(currentPassword).isValid;

    return passwordValid && confirmPasswordValid && currentPasswordValid;
  }
}
