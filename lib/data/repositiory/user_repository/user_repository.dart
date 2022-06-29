import 'dart:convert';

import 'package:diamon_rose_app/domain/entities/base/base_item_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_list_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_request_entity.dart';
import 'package:diamon_rose_app/domain/entities/base/base_response_entity.dart';
import 'package:diamon_rose_app/domain/entities/genre_entity/genre_entity.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_block_user_model.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_change_password_model.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_follow_user_model.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/request_get_user_info_model.dart';
import 'package:diamon_rose_app/domain/entities/request/user_request/response_upload_avatar_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_social_entity_model.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_total_content_entity.dart';
import 'package:diamon_rose_app/domain/http/async_action_listener.dart';
import 'package:diamon_rose_app/domain/http/http_api.dart';
import 'package:diamon_rose_app/domain/http/http_request.dart';
import 'package:diamon_rose_app/domain/http/network_config/network_config.dart';
import 'package:diamon_rose_app/domain/local_storage/token/token_local_storage.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:dio/dio.dart' as dio;

class UserRepository {
  UserRepository._();

  static final UserRepository _instance = UserRepository._();

  static UserRepository get instance => _instance;

  void requestUpdateUser(
      {required String uid,
      required UserContentModel requestUserModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack reLoginCallBack,
      required HttpCallBack<BaseItemResponseEntity<UserContentModel>> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.updateUser + uid;

    HttpRequest.getInstance()
        ?.put<BaseResponseEntity, BaseItemResponseEntity<UserContentModel>>(url,
            data: BaseRequestEntity(data: requestUserModel.toJson()).encode(),
            onStart: onStart,
            onSuccess: onSuccess,
            reLoginCallBack: reLoginCallBack,
            onError: onError);
  }

  void requestChangePassword(
      {required RequestChangePasswordModel requestChangePasswordModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack reLoginCallBack,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.changePassword;

    HttpRequest.getInstance()?.put<BaseResponseEntity<String>, dynamic>(url,
        data: BaseRequestEntity(data: requestChangePasswordModel.toJson())
            .encode(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
        reLoginCallBack: reLoginCallBack);
  }

  void requestGetUserInfo(
      {required RequestGetUserInfoModel requestGetUserInfoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseItemResponseEntity<UserTotalContentModel>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.getUserInfo + requestGetUserInfoModel.uid;

    HttpRequest.getInstance()?.get<BaseResponseEntity,
        BaseItemResponseEntity<UserTotalContentModel>>(
      url,
      data: BaseRequestEntity(data: requestGetUserInfoModel.toJson()).encode(),
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  void requestFollowIngUserDetail(
      {required RequestGetUserInfoModel requestGetUserInfoModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseItemResponseEntity<UserTotalContentModel>>
          onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.followingUserDetail + requestGetUserInfoModel.uid;

    HttpRequest.getInstance()?.get<BaseResponseEntity,
        BaseItemResponseEntity<UserTotalContentModel>>(
      url,
      data: BaseRequestEntity(data: requestGetUserInfoModel.toJson()).encode(),
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  void requestUpdateSocialInfoUser(
      {required String uid,
      required UserSocialModel requestUserModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack reLoginCallBack,
      required HttpCallBack<BaseItemResponseEntity<UserContentModel>> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.updateUserSocial + uid;

    HttpRequest.getInstance()
        ?.put<BaseResponseEntity, BaseItemResponseEntity<UserContentModel>>(url,
            data: BaseRequestEntity(data: requestUserModel.toJson()).encode(),
            onStart: onStart,
            onSuccess: onSuccess,
            reLoginCallBack: reLoginCallBack,
            onError: onError);
  }

  Future<void> requestUploadImage(
      {required String type,
      required String filePath,
      required String uid,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>> onError}) async {
    onStart();
    try {
      final dio.FormData formData = dio.FormData.fromMap({
        "file": await dio.MultipartFile.fromFile(filePath,
            filename: filePath.split('/').last),
      });
      final url = type == CHANGE_AVATAR
          ? "${NetworkConfig.getBaseUrl}${HttpApi.uploadAvatar}${uid}"
          : "${NetworkConfig.getBaseUrl}${HttpApi.uploadCover}";
      final token = await TokenLocalStorage.getToken();
      final response = await dio.Dio().post(
        url,
        data: formData,
        options: dio.Options(headers: {
          '${NetworkConfig.authorization}': '${NetworkConfig.bearer} ${token}'
        }),
      );
      final result = BaseResponseEntity.fromJson(response.data);

      if (result.status == true) {
        final res = ResponseAvatarModel.fromJson(result.data);
        onSuccess(res);
      } else
        onError([result.messages.toString()]);
    } on Exception catch (e) {
      onError([e.toString()]);
    }
  }

  void requestFollowUser(
      {required RequestFollowUserModel requestFollowUserModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.followUser;
    HttpRequest.getInstance()?.post<BaseResponseEntity<String>, dynamic>(url,
        queryParameters: requestFollowUserModel.toJson(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void requestHandleFollow(
      {required bool isFollowing,
      required RequestFollowUserModel requestFollowUserModel,
      required HttpRequestCallBack onStart,
      required HttpCallBack<dynamic> onSuccess,
      required HttpCallBack reLoginCallBack,
      required HttpCallBack<List<String>>? onError}) {
    if (isFollowing == true) {
      final url = HttpApi.followUser;
      HttpRequest.getInstance()?.post<BaseResponseEntity<String>, dynamic>(url,
          queryParameters: requestFollowUserModel.toJson(),
          onStart: onStart,
          onSuccess: onSuccess,
          onError: onError);
    } else {
      final url = "${HttpApi.followUser}/${requestFollowUserModel.id}";
      HttpRequest.getInstance()?.delete<BaseResponseEntity<String>, dynamic>(
          url,
          queryParameters: requestFollowUserModel.toJson(),
          reLoginCallBack: reLoginCallBack,
          onStart: onStart,
          onSuccess: onSuccess,
          onError: onError);
    }
  }

  void requestDeleteImage(
      {required String type,
      required String uid,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url =
        "${type == CHANGE_AVATAR ? HttpApi.deleteAvatar : HttpApi.deleteCoverImage}${uid}";

    HttpRequest.getInstance()?.delete<BaseResponseEntity, dynamic>(url,
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError,
        reLoginCallBack: (response) {});
  }

  void blockUser(
      {required RequestBlockUserModel requestBlockUserEntity,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = HttpApi.blockUser;
    HttpRequest.getInstance()?.post<BaseResponseEntity<String>, dynamic>(url,
        queryParameters: requestBlockUserEntity.toJson(),
        onStart: onStart,
        onSuccess: onSuccess,
        onError: onError);
  }

  void getFollowing(
      {required num uid,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<UserContentModel>> onSuccess,
      required HttpCallBack<List<String>>? onError,
      dynamic requestParam}) {
    final url = "${HttpApi.userPath}/$uid/following";
    HttpRequest.getInstance()?.get<BaseResponseEntity, Map<String, dynamic>>(
        url,
        queryParameters: requestParam,
        onStart: onStart, onSuccess: (data) async {
      await onSuccess(BaseListResponseEntity.fromJson(data));
    }, onError: onError);
  }

  void getFollowers(
      {required num uid,
      dynamic requestParam,
      required HttpRequestCallBack onStart,
      required HttpCallBack<BaseListResponseEntity<UserContentModel>> onSuccess,
      required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.userPath}/$uid/followers";
    HttpRequest.getInstance()?.get<BaseResponseEntity, Map<String, dynamic>>(
        url,
        queryParameters: requestParam,
        onStart: onStart, onSuccess: (data) async {
      await onSuccess(BaseListResponseEntity.fromJson(data));
    }, onError: onError);
  }

  void unFollow(
      {required num uid,
      required HttpRequestCallBack onStart,
      required HttpCallBack onSuccess,
      required HttpCallBack<List<String>>? onError,
      required HttpCallBack reLoginCallBack}) {
    final url = "${HttpApi.followUser}/$uid";
    HttpRequest.getInstance()?.delete(url,
        onStart: onStart,
        onSuccess: onSuccess,
        reLoginCallBack: reLoginCallBack,
        onError: onError);
  }

  void getGenres(
      {
        required HttpRequestCallBack onStart,
        required HttpCallBack<BaseListResponseEntity<GenreEntity>>
        onSuccess,
        required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.userPath}/${HttpApi.getAndPostGenres}";

    HttpRequest.getInstance()?.get<BaseResponseEntity,
        BaseListResponseEntity<GenreEntity>>(
      url,
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  void postGenres(
      {
        required List<GenreEntity> listGenre,
        required HttpRequestCallBack onStart,
        required HttpCallBack<dynamic>
        onSuccess,
        required HttpCallBack<List<String>>? onError}) {
    final url = "${HttpApi.userPath}/${HttpApi.getAndPostGenres}";

    HttpRequest.getInstance()?.post<BaseResponseEntity<String>,
        dynamic>(
      url,
      data: json.encode({"selectedGenres": listGenre}),
      onStart: onStart,
      onSuccess: onSuccess,
      onError: onError,
    );
  }
}
