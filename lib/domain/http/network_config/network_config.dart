import 'package:diamon_rose_app/data/config/environments/environments.dart';

class NetworkConfig {
  // baseUrl
  static final baseUrlDevelopment = 'http://3.141.150.77:8081/api/v1';
  // baseUrl
  static final baseUrlProduction = 'http://3.141.150.77:8080/api/v1';

  static final baseUrlStaging = 'http://3.141.150.77:8080/api/v1';


  // receiveTimeout
  static final int receiveTimeout = 15000;

  // connectTimeout
  static final int connectionTimeout = 15000;

  // connectTimeout
  static final int sendTimeout = 10000;

  //authorization
  static final String authorization = "Authorization";

  // bearer
  static final String bearer = "Bearer";

  // session token timeout
  static final int sessionTokenTimeout = 10800000;

  static String get getBaseUrl {
    if (Environments.isDevelopment) {
      return baseUrlDevelopment;
    }

    if (Environments.isProduction) {
      return baseUrlProduction;
    }

    if (Environments.isStaging) {
      return baseUrlStaging;
    }

    return baseUrlDevelopment;
  }
}
