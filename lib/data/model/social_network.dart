import 'package:flutter/material.dart';

class SocialNetwork {
  SocialNetwork({required String name, required CircleAvatar image}) {
    this.name = name;
    this.avatar = image;
  }

  late String name;
  late CircleAvatar avatar;
}
