import 'package:diamon_rose_app/data/model/phone_number.dart';
import 'package:diamon_rose_app/data/model/video.dart';
import 'package:diamon_rose_app/domain/entities/account_entity/account_entity.dart';
import 'package:diamon_rose_app/domain/entities/emoji_entity/emoji_entity.dart';
import 'package:diamon_rose_app/domain/entities/enum/layer_type.dart';
import 'package:diamon_rose_app/domain/entities/layer_entity/layer_entity.dart';
import 'package:diamon_rose_app/domain/model/payment.dart';
import 'package:diamon_rose_app/domain/model/user_information.dart';
import 'package:diamon_rose_app/share/constants/constant.dart';
import 'package:diamon_rose_app/share/style/colors.dart';
import 'package:flutter/material.dart';

class AppData {
  List<String> listOfArea = ["Vietnam", "Japan", "USA"];

  List<PhoneNum> listCountryPhone = [
    PhoneNum("JP", "+81"),
    PhoneNum("VN", "+84"),
    PhoneNum("US", "+56"),
  ];

  List<Video> listVideoForYou = [
    Video(
        id: "0",
        user: "Sakura Chan",
        userPic: "https://avatarfiles.alphacoders.com/187/187141.jpg",
        videoTitle: "Hello My name Sakura",
        favorite: "550",
        songName: "Name Song 1",
        likes: "992",
        isLock: false,
        comments: "300",
        url:
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"),
    Video(
        id: "1",
        user: "Mimi chan",
        favorite: "500",
        userPic: AVATAR_DEMO_URL,
        videoTitle: "Lorem Ipsum is simply dummy text of the printing"
            " and typesetting industry."
            "Lorem Ipsum has been the industry's ",
        songName: "Name Song 2",
        likes: "1000",
        isLock: true,
        comments: "222",
        url:
            "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
  ];
  Payment paymentData = Payment(
      id: "0",
      userName: "User",
      expirationMonth: 10,
      expirationYear: 23,
      cvc: "554",
      cardNumber: "4693749011327034",
      country: "vn",
      postalCode: "560000");
  UserInfo userInfo = UserInfo(id: "0", userName: "User", firstPayment: true);

  List<EmojiEntity> dummyEmojis = [
    new EmojiEntity(icon: Icons.star, color: AppColors.purple),
    new EmojiEntity(icon: Icons.camera, color: AppColors.yellow),
    new EmojiEntity(icon: Icons.ac_unit, color: AppColors.blue),
    new EmojiEntity(icon: Icons.access_alarms, color: AppColors.grey),
    new EmojiEntity(icon: Icons.adb, color: AppColors.green),
    new EmojiEntity(icon: Icons.ac_unit, color: AppColors.blue),
    new EmojiEntity(icon: Icons.access_alarms, color: AppColors.grey),
    new EmojiEntity(icon: Icons.adb, color: AppColors.green),
    new EmojiEntity(icon: Icons.ac_unit, color: AppColors.blue),
    new EmojiEntity(icon: Icons.access_alarms, color: AppColors.grey),
    new EmojiEntity(icon: Icons.adb, color: AppColors.green),
  ];

  List<LayerEntity> dummyLayers = [
    new LayerEntity(
        itemId: 1,
        itemUrl:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        name: 'Background',
        height: 200,
        width: 120,
        scale: 1,
        xcoordinates: 0,
        ycoordinates: 0,
        duration: 60,
        position: 0,
        itemType: LayerType.background),
    new LayerEntity(
        itemId: 2,
        itemUrl:
            'https://diamant-dev.s3.us-east-2.amazonaws.com/app/video/video_matting/output/thisisamerica.mp4',
        name: 'AR',
        height: 200,
        width: 120,
        scale: 1,
        xcoordinates: 0.2,
        ycoordinates: 0.2,
        position: 2,
        duration: 15,
        range: RangeValues(0, 5),
        itemType: LayerType.ar),
    new LayerEntity(
        itemId: 3,
        itemUrl:
            'https://diamant-dev.s3.us-east-2.amazonaws.com/app/video/video_matting/output/thisisamerica.mp4',
        name: 'AR',
        height: 200,
        width: 120,
        scale: 1,
        xcoordinates: 0.5,
        ycoordinates: 0.5,
        position: 2,
        duration: 60,
        range: RangeValues(0, 5),
        itemType: LayerType.ar),
    new LayerEntity(
        itemId: 4,
        itemUrl:
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
        name: 'Effect 1',
        height: 90,
        width: 90,
        scale: 1.5,
        xcoordinates: 0.3,
        ycoordinates: 0,
        position: 1,
        duration: 60,
        range: RangeValues(0, 5),
        itemType: LayerType.effect),
    new LayerEntity(
        itemId: 5,
        itemUrl:
            'https://diamant-dev.s3.us-east-2.amazonaws.com/app/video/video_matting/output/thisisamerica.mp4',
        name: 'AR',
        height: 200,
        width: 120,
        scale: 1,
        xcoordinates: 0.7,
        ycoordinates: 0.8,
        position: 2,
        duration: 60,
        range: RangeValues(0, 20),
        itemType: LayerType.ar),
  ];

  AccountEntity dummyAccount = AccountEntity(
    id: "1",
    userName: "MIMICHAN",
    nickName: "Mimi chan",
    followers: 500,
    following: 12,
    videos: 20,
    userPic: "https://avatarfiles.alphacoders.com/187/187141.jpg",
    coverImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkkCvQixrx3kF-qb0XVAwXcZQrhVp1UdBDrw&usqp=CAU",
    job: "Fashion model",
    introduceContent: "Lorem Ipsum is simply dummy text of the printing and "
        "typesetting industry. Lorem Ipsum has been the industry's standard "
        "dummy text ever since the 1500s",
  );
}
