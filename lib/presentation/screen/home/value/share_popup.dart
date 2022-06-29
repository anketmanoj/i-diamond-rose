import 'package:diamon_rose_app/data/model/social_network.dart';
import 'package:diamon_rose_app/data/model/user.dart';
import 'package:diamon_rose_app/share/images/app_images.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

void showSharePopup(BuildContext context, {bool isLocalUser = false}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return _customBottomSheetShare(
            context, _returnListUser(), _returnNetWorkSocial());
      });
}

Widget _customBottomSheetShare(
    BuildContext context, List<User> users, List<SocialNetwork> networks) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        Text(Localy.of(context)!.textShareWithFriend,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 8,
        ),
        Flexible(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: users.map(_itemUser).toList(),
          ),
        ),
        Text(Localy.of(context)!.textShareNetWork,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 8,
        ),
        Flexible(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: networks.map(_itemSocialNetwork).toList(),
          ),
        ),
        _listItemsAdditional(context)
      ],
    ),
  );
}

Widget _listItemsAdditional(BuildContext context) {
  ///Todo (action) implement action onTap
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _itemAdditional(
          name: Localy.of(context)!.textReport,
          icon: AppImages.ic_flags_svg,
          onTap: () {}),
      _itemAdditional(
          name: Localy.of(context)!.textHeart,
          icon: AppImages.ic_heart_svg,
          onTap: () {}),
      _itemAdditional(
          name: Localy.of(context)!.textDownload,
          icon: AppImages.ic_download_svg,
          onTap: () {}),
      _itemAdditional(
          name: Localy.of(context)!.textContinue,
          icon: AppImages.ic_pause_play_svg,
          onTap: () {}),
      _itemAdditional(
          name: Localy.of(context)!.textLink,
          icon: AppImages.ic_link_svg,
          onTap: () {}),
    ],
  );
}

Widget _itemUser(User user) {
  return Column(
    children: [
      user.image,
      Padding(
        padding: const EdgeInsets.all(16),
        child: Text(user.name,
            style: TextStyle(
              fontSize: 16,
            )),
      )
    ],
  );
}

Widget _itemSocialNetwork(SocialNetwork network) {
  return Column(
    children: [
      network.avatar,
      Padding(
        padding: const EdgeInsets.all(16),
        child: Text(network.name,
            style: TextStyle(
              fontSize: 16,
            )),
      )
    ],
  );
}

Widget _itemAdditional(
    {required String name, required String icon, Function()? onTap}) {
  return Builder(
    builder: (context) => InkWell(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width / 6,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SvgPicture.asset(
              icon,
              height: heightScreen(percent: 6),
              width: widthScreen(percent: 6),
            ),
            Center(
                child: Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12)))
          ])),
    ),
  );
}

List<User> _returnListUser() {
  return [
    User(
        name: "user1",
        image: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.red,
        )),
    User(
        name: "user2",
        image: CircleAvatar(radius: 25, backgroundColor: Colors.blue)),
    User(
        name: "user3",
        image: CircleAvatar(radius: 25, backgroundColor: Colors.yellow)),
    User(
        name: "user4",
        image: CircleAvatar(radius: 25, backgroundColor: Colors.green)),
    User(
        name: "user5",
        image: CircleAvatar(radius: 25, backgroundColor: Colors.pink)),
    User(
        name: "user6",
        image: CircleAvatar(radius: 25, backgroundColor: Colors.amber)),
    User(
        name: "user7",
        image: CircleAvatar(radius: 25, backgroundColor: Colors.amber))
  ];
}

List<SocialNetwork> _returnNetWorkSocial() {
  return [
    SocialNetwork(
        name: "Line",
        image: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/images/line.png"),
        )),
    SocialNetwork(
        name: "Instagram",
        image: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/instagram.png"))),
    SocialNetwork(
        name: "Tiktok",
        image: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/tiktok.png"))),
    SocialNetwork(
        name: "Facebook",
        image: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/facebook.png"))),
    SocialNetwork(
        name: "Messenger",
        image: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/messenger.png"))),
    SocialNetwork(
        name: "SMS",
        image: CircleAvatar(
            radius: 25, backgroundImage: AssetImage("assets/images/sms.png"))),
    SocialNetwork(
        name: "メッセージ",
        image: CircleAvatar(radius: 25, backgroundColor: Colors.amber)),
    SocialNetwork(
        name: "メール",
        image: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/email.png"))),
    SocialNetwork(
        name: "その他",
        image: CircleAvatar(
            radius: 25, backgroundImage: AssetImage("assets/images/add.png"))),
  ];
}
