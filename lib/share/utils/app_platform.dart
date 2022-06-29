import 'package:diamon_rose_app/share/utils/validate_utils.dart';
import 'package:universal_platform/universal_platform.dart';

class AppPlatform {
  static UniversalPlatformType? overridePlatform;

  static bool get isWeb => ValidateUtils.isEmpty(overridePlatform)
      ? UniversalPlatform.isWeb
      : overridePlatform == UniversalPlatformType.Web;

  static bool get isAndroid => ValidateUtils.isEmpty(overridePlatform)
      ? UniversalPlatform.isAndroid
      : overridePlatform == UniversalPlatformType.Android;

  static bool get isIOS => ValidateUtils.isEmpty(overridePlatform)
      ? UniversalPlatform.isIOS
      : overridePlatform == UniversalPlatformType.IOS;

  static bool get isMobile => AppPlatform.isAndroid || AppPlatform.isIOS;
}
