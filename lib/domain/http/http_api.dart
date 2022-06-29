class HttpApi {
  static const String api = '/api/v1';

  ///check connect
  static const String checkConnect = 'google.com';

  /// auth
  static const String signIn = '/auth/sign-in';
  static const String refreshToken = '/auth/refresh-token';
  static const String signOut = '/auth/sign-out';
  static const String signUp = '/auth/sign-up';
  static const String signUpEmail = '/auth/sign-up-email';
  static const String checkOTP = '/auth/check-otp';
  static const String createPassword = '/auth/create-password';
  static const String forgotPassword = '/auth/forgot-password';
  static const String renewPassword = '/auth/change-password';

  ///video
  static const String uploadVideo = '/s3/file-upload';
  static const String getListVideo = '/videos';
  static const String getListVideoV2 = '/v2/videos';
  static const String registerFile = '/s3/register-file';
  static const String triggerRVM = '/s3/trigger-rvm';
  static const String downloadFile = '/s3/file-download';
  static const String getListVideoByFollowing = '/videos-by-following';
  static const String getInfoVideo = '/v2/info-video';

  /// user
  static const String updateUser = '/user/';
  static const String changePassword = '/user/password';
  static const String getUserInfo = '/user-detail/';
  static const String uploadAvatar = '/user/avatar/';
  static const String uploadCover = '/user/cover/';
  static const String updateUserSocial = '/user-social/';
  static const String deleteAvatar = '/user/avatar/';
  static const String deleteCoverImage = "/user/cover-url/";
  static const String blockUser = '/user/block';
  static const String followUser = '/user/subscribe';
  static const String follower = '/user/follower';
  static const String userPath = '/user';
  static const String followingUserDetail = "/user-detail-follow-info/";
  static const String getAndPostGenres = "/genres";

  /// commom
  static const String getContries = '/common/countries';
  static const String updateDeviceToken = "/common/update-device-token";
  static const String arCollections = '/ar-collections';
  static const String fonts = '/fonts';

  ///video-setting
  static const String getVideoSetting = '/setting-video';
  static const String getListVideoForUser = '/user-videos/';

  /// notification
  static const String getListNotifications = '/notifications';
  static const String notification = '/notification';

  ///my collections
  static const String getARCollection = "/ar-collections";
  static const String myAR = "/my-ar";
  static const String getMyAR = "/my-ars";
  static const String getBackground = "/background";
  static const String getEffect = "/effect";
  static const String purchaseConllection = "/purchase-history-by-category";

  ///video
  static const String uploadLiveVideo = "/video/upload";
  static const String videoDetail = "/video-detail";
  static const String saleVideo = "/sale-video";

  ///block user
  static const String getListBlockUser = "/my-block-users";
  static const String unblockUser = "/user/block/";

  ///wk video
  static const String wkVideo = "/wk-video";
  static const String getDraftVideos = "/draft-video";

  ///shopping cart
  static const String getShoppingCarts = "/shopping-carts";
  static const String shoppingCart = "/shopping-cart";

  ///event Video
  static const String likeVideo = "/like";
  static const String likeVideos = "/likes/count";
  static const String favoriteVideo = "/favorite";
  static const String favoriteVideos = "/favorite/count";
  static const String countCartItems = "/count-shopping-carts";

  ///payment
  static const String checkout = "/payment/checkout";

  ///video-comments
  static const String videoComments = "/video-comments";
  static const String videoComment = "/video-comment";

  ///favorite
  static const String listFavorite = "/favorites";
}
