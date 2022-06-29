import 'package:package_info_plus/package_info_plus.dart';

class Environments {
  factory Environments() => _instance ??= Environments._();

  Environments._() {
    initialize();
  }

  static Environments? _instance;

  Future<void> initialize() async {
    final info = await PackageInfo.fromPlatform();
    assert(info.appName.isNotEmpty);
    appName = info.appName;
    assert(info.version.isNotEmpty);
    appVersion = info.version;
  }

  String appName = '';
  String appVersion = '';

  static bool get isDevelopment => flavorRawString == 'development';

  static bool get isProduction => flavorRawString == 'production';

  static bool get isStaging => flavorRawString == 'staging';

  static String get flavorRawString =>
      const String.fromEnvironment('build.flavor', defaultValue: '')
          .toLowerCase();

  static String getStripePublishableKey() {
    final defaultStripePublishableKey = "pk_test_TYooMQauvdEDq54NiTphI7jx";
    if (isDevelopment) {
      return defaultStripePublishableKey;
    }

    if (isProduction) {
      return "pk_test_TYooMQauvdEDq54NiTphI7jx"; //Todo(key_stripe_production)
    }
    if (isStaging) {
      return "pk_test_TYooMQauvdEDq54NiTphI7jx"; //Todo(key_stripe_production)
    }

    return defaultStripePublishableKey;
  }
}
