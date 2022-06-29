import 'package:diamon_rose_app/data/validation/validation_result.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginValidationResults {
  LoginValidationResults(BuildContext context) {
    this.context = context;
  }

  late BuildContext context;

  ValidationResult validateUserName(String username) {
    if (ValidateUtils.isNullEmptyOrWhitespace(username)) {
      return ValidationResult.error(Localy.of(context)!.userNameEmptyLabel);
    }

    return ValidationResult.ok();
  }

  ValidationResult validateEmail(String email) {
    if (ValidateUtils.isNullEmptyOrWhitespace(email) &&
        ValidateUtils.validateEmail(email)) {
      return ValidationResult.error(Localy.of(context)!.userNameEmptyLabel);
    }

    return ValidationResult.ok();
  }

  ValidationResult validatePaymenForm(
      String numberPayment, String ccv, String date) {
    if (ValidateUtils.isNullEmptyOrWhitespace(numberPayment) ||
        ValidateUtils.isNullEmptyOrWhitespace(ccv) ||
        ValidateUtils.isNullEmptyOrWhitespace(date)) {
      return ValidationResult.error("false");
    }

    return ValidationResult.ok();
  }

  ValidationResult validatePassword(String password) {
    if (ValidateUtils.isNullEmptyOrWhitespace(password)) {
      return ValidationResult.error(Localy.of(context)!.passwordEmptyLabel);
    }

    return ValidationResult.ok();
  }

  bool validatePaymentForm(
      {required String username,
      required String numberPayment,
      required String ccv,
      required String date}) {
    final nameValid = validateUserName(username).isValid;
    final formValid = validatePaymenForm(numberPayment, ccv, date);
    bool resultFormValid = true;
    if (formValid.errorMessage != null) {
      resultFormValid = false;
    }

    return nameValid && resultFormValid;
  }

  bool validateEmailForm({required String email}) {
    final emailValid = validateEmail(email).isValid;

    return emailValid;
  }

  bool validateForm({required String username, required String password}) {
    final emailValid = validateUserName(username).isValid;
    final passwordValid = validatePassword(password).isValid;

    return emailValid && passwordValid;
  }
}
