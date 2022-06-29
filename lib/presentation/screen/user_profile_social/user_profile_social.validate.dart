import 'package:diamon_rose_app/data/validation/validation_result.dart';
import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserProfileSocialValidationResults {
  UserProfileSocialValidationResults(BuildContext context) {
    this.context = context;
  }

  late BuildContext context;

  ValidationResult validateUrl(String string) {
    if (ValidateUtils.isNullEmptyOrWhitespace(string) ||
        ValidateUtils.isUrl(string)) {
      return ValidationResult.ok();
    }

    return ValidationResult.error(Localy.of(context)!.wrongUrlFormat);
  }

  bool validateForm(
      {required String tiktok,
      required String twitter,
      required String instagram,
      required String facebook}) {
    final tiktokValid = validateUrl(tiktok).isValid;
    final twitterValid = validateUrl(twitter).isValid;
    final instagramValid = validateUrl(instagram).isValid;
    final facebookValid = validateUrl(facebook).isValid;

    return tiktokValid && twitterValid && instagramValid && facebookValid;
  }

  ValidationResult validateFileSize(int fileSize) {
    if (!ValidateUtils.capacityIsTooBig(fileSize, 10000)) {
      return ValidationResult.ok();
    }

    return ValidationResult.error(Localy.of(context)!.imageCapacityTooBig);
  }
}
