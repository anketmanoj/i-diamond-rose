import 'dart:io';

import 'package:video_player/video_player.dart';

class Video {
  Video(
      {required this.id,
      required this.user,
      required this.favorite,
      required this.userPic,
      required this.videoTitle,
      required this.songName,
      required this.likes,
      required this.comments,
      required this.isLock,
      this.thumbnail,
      required this.url});

  Video.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'],
        user = json['user'],
        userPic = json['user_pic'],
        favorite = json['favorite'],
        videoTitle = json['video_title'],
        songName = json['song_name'],
        thumbnail = json['thumbnail'],
        likes = json['likes'],
        isLock = json['isLock'],
        comments = json['comments'],
        url = json['url'];

  String id;
  bool isLock;
  String user;
  String favorite;
  String userPic;
  String videoTitle;
  String songName;
  String likes;
  String comments;
  String url;
  File? thumbnail;

  VideoPlayerController? controller;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['user_pic'] = this.userPic;
    data['favorite'] = this.favorite;
    data['thumbnail'] = this.thumbnail;
    data['video_title'] = this.videoTitle;
    data['song_name'] = this.songName;
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['url'] = this.url;
    return data;
  }

  Future<Null> loadController() async {
    controller = VideoPlayerController.network(url);
    await controller?.initialize();
    //controller?.setLooping(true);
  }
}
