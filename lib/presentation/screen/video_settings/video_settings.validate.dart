import 'package:diamon_rose_app/data/validation/validation_result.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VideoSettingsValidationResults {
  VideoSettingsValidationResults(BuildContext context) {
    this.context = context;
  }

  late BuildContext context;

  ValidationResult validateRequiredField(String string) {
    if (ValidateUtils.isNullEmptyOrWhitespace(string)) {
      return ValidationResult.error(
          Localy.of(context)!.emptyRequiredFieldMessage);
    }

    return ValidationResult.ok();
  }

  ValidationResult validatePercentField(String string) {
    if (ValidateUtils.isPercentValid(string) &&
        ValidateUtils.isGreaterThanZero(int.parse(string))) {
      return ValidationResult.error(
          Localy.of(context)!.emptyRequiredFieldMessage);
    }
    return ValidationResult.ok();
  }

  ValidationResult validateSalePriceField(String string) {
    if (ValidateUtils.isNumeric(string) &&
        ValidateUtils.isGreaterThanZero(int.parse(string))) {
      return ValidationResult.error(
          Localy.of(context)!.emptyRequiredFieldMessage);
    }
    return ValidationResult.ok();
  }

  ValidationResult validateNumPeopleField(String string) {
    if (ValidateUtils.isNumeric(string) &&
        ValidateUtils.isInt(string) &&
        ValidateUtils.isGreaterThanZero(int.parse(string))) {
      return ValidationResult.error(
          Localy.of(context)!.emptyRequiredFieldMessage);
    }
    return ValidationResult.ok();
  }

  bool validateForm({
    required String title,
    required String description,
  }) {
    final titleValid = validateRequiredField(title).isValid;
    final descriptionValid = validateRequiredField(description).isValid;

    return titleValid && descriptionValid;
  }

  bool validatePercent({required String percent}) {
    final percentValid = validatePercentField(percent).isValid;
    return percentValid;
  }

  bool validateSalePrice({required String salePrice}) {
    final salePriceValid = validateSalePriceField(salePrice).isValid;
    return salePriceValid;
  }

  bool validateNumPeople({required String numPeople}) {
    final numPeopleValid = validateNumPeopleField(numPeople).isValid;
    return numPeopleValid;
  }
}
