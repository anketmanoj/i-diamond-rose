enum Status { ON_START, ON_SUCCESS, ON_ERROR }

enum MethodType { GET, POST, PUT, PATCH, DELETE }

enum StateToken { OKE, TOKEN_HAS_NOT_EXPIRED, NO_TOKEN_YET, ERROR }

extension MethodTypeExtension on MethodType {
  String get value => ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD'][index];
}
