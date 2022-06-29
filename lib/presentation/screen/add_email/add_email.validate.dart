import 'package:diamon_rose_app/data/validation/validation_result.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmailValidationResults {
  EmailValidationResults(BuildContext context) {
    this.context = context;
  }

  late BuildContext context;

  ValidationResult validateEmail(String email) {
    if (ValidateUtils.isNullEmptyOrWhitespace(email)) {
      return ValidationResult.error(Localy.of(context)!.hintEnterEmail);
    }
    return ValidationResult.ok();
  }

  bool validateEmailForm({required String email}) {
    final emailValid = validateEmail(email).isValid;

    return emailValid;
  }
}
