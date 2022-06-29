// Package imports:
// Project imports:
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/add_email/add_email_binding.dart';
import 'package:diamon_rose_app/presentation/screen/add_email/add_email_screen.dart';
import 'package:diamon_rose_app/presentation/screen/add_password/add_password_binding.dart';
import 'package:diamon_rose_app/presentation/screen/add_password/add_password_screen.dart';
import 'package:diamon_rose_app/presentation/screen/ar_progressing/ar_progressing_binding.dart';
import 'package:diamon_rose_app/presentation/screen/ar_progressing/ar_progressing_screen.dart';
import 'package:diamon_rose_app/presentation/screen/ar_record/ar_record_binding.dart';
import 'package:diamon_rose_app/presentation/screen/ar_record/ar_record_screen.dart';
import 'package:diamon_rose_app/presentation/screen/block_user/block_binding.dart';
import 'package:diamon_rose_app/presentation/screen/block_user/block_screen.dart';
import 'package:diamon_rose_app/presentation/screen/category_selecting/category_selecting_binding.dart';
import 'package:diamon_rose_app/presentation/screen/category_selecting/category_selecting_screen.dart';
import 'package:diamon_rose_app/presentation/screen/change_password/change_password_binding.dart';
import 'package:diamon_rose_app/presentation/screen/change_password/change_password_screen.dart';
import 'package:diamon_rose_app/presentation/screen/choose_mode_signin/choose_mode_signin_binding.dart';
import 'package:diamon_rose_app/presentation/screen/choose_mode_signin/choose_mode_signin_screen.dart';
import 'package:diamon_rose_app/presentation/screen/condition_purchase/condition_purchase_binding.dart';
import 'package:diamon_rose_app/presentation/screen/condition_purchase/condition_purchase_screen.dart';
import 'package:diamon_rose_app/presentation/screen/create_video/create_video_binding.dart';
import 'package:diamon_rose_app/presentation/screen/create_video/create_video_screen.dart';
import 'package:diamon_rose_app/presentation/screen/edit_profile/edit_profile_binding.dart';
import 'package:diamon_rose_app/presentation/screen/edit_profile/edit_profile_view.dart';
import 'package:diamon_rose_app/presentation/screen/edit_video/edit_video_binding.dart';
import 'package:diamon_rose_app/presentation/screen/edit_video/edit_video_screen.dart';
import 'package:diamon_rose_app/presentation/screen/favorite/favorite_screen.dart';
import 'package:diamon_rose_app/presentation/screen/favorite/favorite_screen_binding.dart';
import 'package:diamon_rose_app/presentation/screen/first_screen/first_screen.dart';
import 'package:diamon_rose_app/presentation/screen/first_screen/first_screen_binding.dart';
import 'package:diamon_rose_app/presentation/screen/follow/follow_binding.dart';
import 'package:diamon_rose_app/presentation/screen/follow/follow_screen.dart';
import 'package:diamon_rose_app/presentation/screen/forgot_password/forgot_password_binding.dart';
import 'package:diamon_rose_app/presentation/screen/forgot_password/forgot_password_screen.dart';
import 'package:diamon_rose_app/presentation/screen/forgot_password_otp/forgot_otp_binding.dart';
import 'package:diamon_rose_app/presentation/screen/forgot_password_otp/forgot_otp_screen.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_binding.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_screen.dart';
import 'package:diamon_rose_app/presentation/screen/login/login_binding.dart';
import 'package:diamon_rose_app/presentation/screen/login/login_screen.dart';
import 'package:diamon_rose_app/presentation/screen/lost_network_screen/lost_network_binding.dart';
import 'package:diamon_rose_app/presentation/screen/lost_network_screen/lost_network_screen.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection/my_collection_binding.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection/my_collection_screen.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection_detail/my_collection_detail_binding.dart';
import 'package:diamon_rose_app/presentation/screen/my_collection_detail/my_collection_detail_screen.dart';
import 'package:diamon_rose_app/presentation/screen/my_draft_video/my_draft_video_binding.dart';
import 'package:diamon_rose_app/presentation/screen/my_draft_video/my_draft_video_screen.dart';
import 'package:diamon_rose_app/presentation/screen/my_material/my_material_binding.dart';
import 'package:diamon_rose_app/presentation/screen/my_material/my_material_screen.dart';
import 'package:diamon_rose_app/presentation/screen/notification/notification_binding.dart';
import 'package:diamon_rose_app/presentation/screen/notification/notification_screen.dart';
import 'package:diamon_rose_app/presentation/screen/other_content/other_content_binding.dart';
import 'package:diamon_rose_app/presentation/screen/other_content/other_content_screen.dart';
import 'package:diamon_rose_app/presentation/screen/payment/payment_binding.dart';
import 'package:diamon_rose_app/presentation/screen/payment/payment_screen.dart';
import 'package:diamon_rose_app/presentation/screen/payment/view/payment_information.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_binding.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_screen.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/purchase_binding.dart';
import 'package:diamon_rose_app/presentation/screen/purchase/purchase_screen.dart';
import 'package:diamon_rose_app/presentation/screen/purchase_policy/purchase_policy_binding.dart';
import 'package:diamon_rose_app/presentation/screen/purchase_policy/purchase_policy_screen.dart';
import 'package:diamon_rose_app/presentation/screen/register/register_binding.dart';
import 'package:diamon_rose_app/presentation/screen/register/register_screen.dart';
import 'package:diamon_rose_app/presentation/screen/register_complete/register_complete_binding.dart';
import 'package:diamon_rose_app/presentation/screen/register_complete/signup_complete_view.dart';
import 'package:diamon_rose_app/presentation/screen/renew_password/renew_password_binding.dart';
import 'package:diamon_rose_app/presentation/screen/renew_password/renew_password_screen.dart';
import 'package:diamon_rose_app/presentation/screen/replay_video/replay_video_binding.dart';
import 'package:diamon_rose_app/presentation/screen/replay_video/replay_video_screen.dart';
import 'package:diamon_rose_app/presentation/screen/shopping_cart/shopping_cart_binding.dart';
import 'package:diamon_rose_app/presentation/screen/shopping_cart/shopping_cart_screen.dart';
import 'package:diamon_rose_app/presentation/screen/sign_up/otp_confirm_binding.dart';
import 'package:diamon_rose_app/presentation/screen/sign_up/otp_confirm_screen.dart';
import 'package:diamon_rose_app/presentation/screen/sign_up_choice/sign_up_choice_binding.dart';
import 'package:diamon_rose_app/presentation/screen/sign_up_choice/sign_up_choice_screen.dart';
import 'package:diamon_rose_app/presentation/screen/splash_screen/splash_screen.dart';
import 'package:diamon_rose_app/presentation/screen/splash_screen/splash_screen_binding.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_binding.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_info/user_profile_info_screen.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_social/user_profile_social_binding.dart';
import 'package:diamon_rose_app/presentation/screen/user_profile_social/user_profile_social_screen.dart';
import 'package:diamon_rose_app/presentation/screen/video_detail/video_detail_binding.dart';
import 'package:diamon_rose_app/presentation/screen/video_detail/video_detail_screen.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/video_settings_binding.dart';
import 'package:diamon_rose_app/presentation/screen/video_settings/video_settings_screen.dart';
import 'package:get/get.dart';

class Routers {
  static final route = [
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_OTP_CONFIRM,
        page: () => OtpConfirmView(),
        binding: OtpConfirmBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_LOGIN,
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_CHOOSE_MODE_PAGE,
        page: () => ChooseModeSignInScreen(),
        binding: ChooseModeSignInBiding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_VIDEO_DETAIL,
        page: () => VideoDetailScteen(),
        binding: VideoDetailBinding()),
    GetPage(name: ROUTER_MAIN, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_FORGOT_PASSWORD,
        page: () => ForgotPasswordScreen(),
        binding: ForgotPasswordBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_PURCHASE_POLICY,
        page: () => PurchasePolicyScreen(),
        binding: PurchasePolicyBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_RESET_PASSWORD,
        page: () => ChangePassword(),
        binding: ChangePasswordBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_REGISTER_COMPLETE,
        page: () => SignUpCompleteView(),
        binding: RegisterCompleteBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_CREATE_VIDEO,
        page: () => CreateVideoView(),
        binding: CreateVideoBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_PAYMENT,
        page: () => PaymentView(),
        binding: PaymentBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_PAYMENT_FORM,
        page: () => PaymentInformationView(),
        binding: PaymentBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_REGISTER,
        page: () => RegisterView(),
        binding: RegisterBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_EDIT_PROFILE,
        page: () => EditProfileView(),
        binding: EditProfileBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_FAVORITE,
        page: () => FavoriteScreen(),
        binding: FavoriteScreenBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_FOLLOW,
        page: () => FollowView(),
        binding: FollowBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_BLOCK,
        page: () => BlockView(),
        binding: BlockBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_LOGIN_CHOICE,
        page: () => SignUpChoiceScreen(),
        binding: SignUpChoiceBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_ADD_PASSWORD,
        page: () => AddPasswordScreen(),
        binding: AddPasswordBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_ADD_EMAIL,
        page: () => AddEmailScreen(),
        binding: AddEmailBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_EDIT_VIDEO,
        page: () => EditVideoScreen(),
        binding: EditVideoBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_EDIT_INFO_SOCIAL,
        page: () => UserProfileSocialScreen(),
        binding: UserProfileSocialBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_NOTIFICATION,
        page: () => NotificationScreen(),
        binding: NotificationBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_EDIT_INFO,
        page: () => UserProfileInfoScreen(),
        binding: UserProfileInfoBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_AR_PROGRESSING,
        page: () => ArProgressingScreen(),
        binding: ArProgressingBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_REPLAY_VIDEO,
        page: () => ReplayVideoScreen(),
        binding: ReplayVideoBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_VIDEO_SETTINGS,
        page: () => VideoSettingsScreen(),
        binding: VideoSettingsBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_PROFILE,
        page: () => ProfileScreen(),
        binding: ProfileBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_CREATE_VIDEO_CAMERA,
        page: () => ArRecordScreen(),
        binding: ArRecordBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_FORGOT_PASSWORD_OTP,
        page: () => ForgotOTPScreen(),
        binding: ForgotOTPBinding()),
    GetPage(
        name: ROUTER_RENEW_PASSWORD,
        page: () => RenewPasswordScreen(),
        binding: RenewPasswordBinding()),
    GetPage(
        name: ROUTER_MY_COLLECTION,
        page: () => MyCollectionScreen(),
        binding: MyCollectionBinding()),
    GetPage(
        name: ROUTER_SPLASH_SCREEN,
        page: () => SplashScreen(),
        binding: SplashScreenBinding()),
    GetPage(
        name: ROUTER_MY_MATERIALS,
        page: () => MyMaterialScreen(),
        binding: MyMaterialBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_PURCHASE_SCREEN,
        page: () => PurchaseScreen(),
        binding: PurchaseBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_MY_COLLECTION_VIEW,
        page: () => MyCollectionDetailScreen(),
        binding: MyCollectionDetailBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_SHOPPING_CART_SCREEN,
        page: () => ShoppingCartScreen(),
        binding: ShoppingCartBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_CONDITION_PURCHASE,
        page: () => ConditionPurchaseScreen(),
        binding: ConditionPurchaseBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_OTHER_CONTENT,
        page: () => OtherContentScreen(),
        binding: OtherContentBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_MY_DRAFT_VIDEO,
        page: () => MyDraftVideoScreen(),
        binding: MyDraftVideoBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_FIRST_LOAD,
        page: () => FirstScreen(),
        binding: FirstScreenBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_LOST_NETWORK,
        page: () => LostNetworkScreen(),
        binding: LostNetworkBinding()),
    GetPage(
        transitionDuration: Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: ROUTER_CATEGORY_SELECTING,
        page: () => CategorySelectingScreen(),
        binding: CategorySelectingBinding()),
  ];
}
