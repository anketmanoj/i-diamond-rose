import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_create_password_model.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_renew_password_model.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_sign_in_model.dart';
import 'package:diamon_rose_app/domain/entities/request/auth_request/request_sign_up_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/otp_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_entity.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';
import 'package:diamon_rose_app/domain/local_storage/token/token_local_storage.dart';

class AuthRepository {
  AuthRepository._();

  static final AuthRepository _instance = AuthRepository._();

  static AuthRepository get instance => _instance;

  Future<void> saveToken(String token, String refreshToken) async {
    await TokenLocalStorage.saveToken(
        token: token,
        refreshToken: refreshToken,
        time: DateTime.now().millisecondsSinceEpoch);
  }

  Future<bool> hasToken() async => TokenLocalStorage.hasToken();

  Future<bool> deleteToken() async => TokenLocalStorage.deleteToken();

  void requestSignIn(
      {required RequestSignInModel signInModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<UserContentModel> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.signIn;

    HttpRequest.getInstance()?.post<BaseResponseEntity, UserEntity>(url,
        data: BaseRequestEntity(data: signInModel.toJson()).encode(),
        onStart: onStart, onSuccess: (response) async {
      final token = response.response?.token;
      final refreshToken = response.response?.refreshToken;
      final userContent = response.response;

      if (token != null && refreshToken != null && userContent != null) {
        await saveToken(token, refreshToken);
        onSuccess(userContent);
      }
    }, onError: onError);
  }

  void requestSignOut(
      {required HttpRequestCallBack onStart,
      required HttpNoResponseCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.signOut;

    HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
        onStart: onStart, onSuccess: (response) async {
      await deleteToken();
      onSuccess();
    }, onError: onError);
  }

  void requestSignUp(
      {required RequestSignUpModel signUpModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<UserContentModel> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.signUp;

    HttpRequest.getInstance()?.post<BaseResponseEntity, UserEntity>(url,
        data: BaseRequestEntity(data: signUpModel.toJson()).encode(),
        onStart: onStart, onSuccess: (response) async {
      final token = response.response?.token;
      final refreshToken = response.response?.refreshToken;
      final userContent = response.response;

      if (token != null && refreshToken != null && userContent != null) {
        await saveToken(token, refreshToken);
        onSuccess(userContent);
      }
    }, onError: onError);
  }

  void requestSignUpWithEmail(
      {required String email,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.signUpEmail;

    HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
        queryParameters: {"email": email},
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestCreatePassword(
      {required RequestCreatePasswordModel createPasswordModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.createPassword;

    HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
        data: BaseRequestEntity(data: createPasswordModel.toJson()).encode(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestCheckOTP(
      {required String otp,
      required String email,
      required HttpRequestCallBack onStart,
      required HttpCallBack<OTPEntity> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.checkOTP;

    HttpRequest.getInstance()?.get<BaseResponseEntity, OTPEntity>(url,
        queryParameters: {"email": email, "otp": otp},
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestForgotPassword(
      {required String email,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.forgotPassword;

    HttpRequest.getInstance()?.post<BaseResponseEntity, dynamic>(url,
        queryParameters: {"email": email},
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestChangePassword(
      {required RequestRenewPasswordModel renewPasswordModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.renewPassword;

    HttpRequest.getInstance()?.post<BaseResponseEntity<String>, dynamic>(url,
        data: BaseRequestEntity(data: renewPasswordModel.toJson()).encode(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  Future<bool> isInfoLogged() async {
    final isLogged = await hasToken();
    if (isLogged) {
      return true;
    }
    return false;
  }
}
