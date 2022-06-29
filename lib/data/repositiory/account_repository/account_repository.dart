import 'package:diamon_rose_app/domain/cache/video_cache/video_cache.dart';
import 'package:diamon_rose_app/domain/entities/user_entity/user_content_entity.dart';
import 'package:diamon_rose_app/domain/local_storage/account_local_storage/account_local_storage.dart';
import 'package:diamon_rose_app/domain/local_storage/app_id_local_storage/app_id_local_storage.dart';
import 'package:diamon_rose_app/domain/local_storage/device_token_local_storage/device_token_local_storage.dart';
import 'package:diamon_rose_app/domain/local_storage/token/token_local_storage.dart';

class AccountRepository {
  AccountRepository._();

  static final AccountRepository _instance = AccountRepository._();

  static AccountRepository get instance => _instance;

  VideoCache cacheManager = VideoCache();

  /// generate an AppId.
  Future<void> generateAppId() async {
    await AppIdLocalStorage.generate();
  }

  /// save device token
  Future<void> saveDeviceToken(String? deviceToken) async {
    await DeviceTokenLocalStorage.save(deviceToken!);
  }

  /// Save your account.
  Future<void> saveAccountInfo(UserContentModel userContent) async {
    await AccountLocalStorage.saveAccountInfo(
        userName: userContent.userName ?? "",
        email: userContent.email ?? "",
        displayName: userContent.displayName ?? "",
        avatar: userContent.avatar ?? "",
        selfIntroduce: userContent.selfIntroduce ?? "",
        userId: userContent.userId ?? 0,
        uid: userContent.uid ?? "",
        roles: userContent.roles ?? [],
        mobile: userContent.mobile ?? "",
        countryId: userContent.countryId ?? 1,
        dateOfBirth: userContent.dateOfBirth,
        tiktokUrl: userContent.tiktokUrl,
        twitterUrl: userContent.twitterUrl,
        instagramUrl: userContent.instagramUrl,
        facebookUrl: userContent.facebookUrl,
        gender: userContent.gender,
        realName: userContent.realName,
        isOfficial: userContent.isOfficial,
        coverUrl: userContent.coverUrl);
  }

  /// Get account information.
  Future<Map<String, dynamic>> accountInfo() async {
    return AccountLocalStorage.accountInfo();
  }

  ///Todo(getAppId)
  /// get the AppId.
  Future<String?> get appId async => AppIdLocalStorage.get();

  ///Todo(deleteAccount)
  /// delete account
  Future<void> deleteAccount() async {
    await AccountLocalStorage.deleteAccountInfo();
    await TokenLocalStorage.deleteToken();
  }
}
