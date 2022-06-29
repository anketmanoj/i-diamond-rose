import 'package:diamon_rose_app/domain/local_storage/local_storage_keys/local_storage_keys.dart';
import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/presentation/screen/profile/profile_view_model.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:diamon_rose_app/share/style/style.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileViewModel());

    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10),
          itemExtent: 35,
          children: [
            _buildText(
                content: Localy.of(context)!.labelMenu,
                style: AppStyles.typeBold22(color: AppColors.greyDark)),
            Divider(height: 1, color: AppColors.greyDark),
            _buildDrawerItem(Localy.of(context)!.profileEditingText, onTap: () {
              LocalStorageKeys.isEditProfile = true;
              Get.toNamed(ROUTER_EDIT_INFO);
            }),
            _buildDrawerItem(Localy.of(context)!.labelMyCollection,
                onTap: () => Get.toNamed(ROUTER_MY_COLLECTION)),
            _buildDrawerItem(Localy.of(context)!.favorite,
                onTap: () => Get.toNamed(ROUTER_FAVORITE)),
            _buildDrawerItem(Localy.of(context)!.myMaterial,
                onTap: () => Get.toNamed(ROUTER_MY_MATERIALS)),
            _buildDrawerItem(Localy.of(context)!.myMaterialAddText,
                onTap: () => Get.toNamed(ROUTER_MY_DRAFT_VIDEO)),
            _buildDrawerItem(Localy.of(context)!.recommendSetting,
                onTap: () {}),
            _buildDrawerItem(Localy.of(context)!.labelShare,
                onTap: () =>
                    {Get.bottomSheet(bottomSheetReport(context, controller))}),
            _buildDrawerItem(Localy.of(context)!.paymentTypeMenu, onTap: () {
              // TODO(PaymentTypeMenu): Implement payment type menu event.
            }),
            _buildDrawerItem(Localy.of(context)!.incomeManagementMenu,
                onTap: () {
              // TODO(IncomeMenu): Implement income menu event.
            }),
            _buildDrawerItem(Localy.of(context)!.transactionHistoryMenu,
                onTap: () {}),
            _buildDrawerItem(Localy.of(context)!.titleShoppingCart,
                onTap: () => Get.toNamed(ROUTER_SHOPPING_CART_SCREEN)),
            _buildDrawerItem(Localy.of(context)!.blockManagementMenu,
                onTap: () => Get.toNamed(ROUTER_BLOCK)),
            _buildDrawerItem(Localy.of(context)!.followManagementMenu,
                onTap: () {
              Get
                ..find<ProfileViewModel>().deleteController()
                ..find<HomeViewModel>()
                    .setCurrentScreen(0, isGoToProfileDetail: true)
                ..toNamed(ROUTER_FOLLOW);
            }),
            _buildDrawerItem(Localy.of(context)!.menuGenreDrawer,
                onTap: () => Get.toNamed(ROUTER_CATEGORY_SELECTING)),
            Divider(height: 1, color: AppColors.greyDark),
            _buildDrawerItem(Localy.of(context)!.helpMenu, onTap: () {}),
            _buildDrawerItem(
              Localy.of(context)!.logoutMenu,
              style: AppStyles.typeTextNormal(color: AppColors.red),
              onTap: () {
                showConfirmDialog(
                    context: context,
                    message: Localy.of(context)!.logoutConfirmMessage,
                    action: () {
                      controller.logout();
                    });
              },
            )
          ],
        ),
      ),
    );
  }

  InkWell _buildDrawerItem(String content,
          {TextStyle? style, Function()? onTap}) =>
      InkWell(
        onTap: () {
          {
            Get.back();
            onTap!();
          }
        },
        child: _buildText(content: content, style: style),
      );

  Widget _buildText({required String content, TextStyle? style}) => Text(
        content,
        style: style ?? AppStyles.typeTextNormal(),
        textAlign: TextAlign.start,
      );

  Future<void> shareProfile() async {
    await Share.share('');
  }
}

Widget bottomSheet(BuildContext context) => Container(
    height: MediaQuery.of(context).size.height * 0.2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(child: Text(Localy.of(context)!.textShareNetWork)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            iconItem('assets/images/svg/ic_link.svg',
                Localy.of(context)!.textShareNetWork),
            iconItem('assets/images/svg/menu_logo_facebook.svg',
                Localy.of(context)!.titleFacebook),
            iconItem('assets/images/svg/menu_logo_line.svg',
                Localy.of(context)!.titleLine),
            iconItem('assets/images/svg/menu_logo_messenger.svg',
                Localy.of(context)!.titleMessenger),
            iconItem('assets/images/svg/menu_logo_twitter.svg',
                Localy.of(context)!.titleTwitter),
          ],
        )
      ],
    ));

Widget iconItem(String logo, String title) => Column(
      children: [
        SvgPicture.asset(
          logo,
          height: 40,
          width: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(title),
      ],
    );

Widget bottomSheetReport(BuildContext context, ProfileViewModel controller) =>
    Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5))),
        height: controller.isLocalUser
            ? heightScreen(percent: 20)
            : heightScreen(percent: 40),
        child: !controller.isLocalUser
            ? Column(
                children: [
                  bottomSheet(context),
                  Divider(height: 2, color: AppColors.greyDark),
                  Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(
                              "assets/images/svg/ic_report.svg",
                              width: 50,
                              height: 50,
                            ),
                            onPressed: () {},
                          ),
                          Text(Localy.of(context)!.titleReport)
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(
                              "assets/images/svg/ic_block.svg",
                              width: 50,
                              height: 50,
                            ),
                            onPressed: controller.blockUser,
                          ),
                          Text(Localy.of(context)!.titleBlock)
                        ],
                      )
                    ],
                  ),
                ],
              )
            : bottomSheet(context));
