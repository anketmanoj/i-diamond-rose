import 'package:flutter/material.dart';

class User {
  User({required String name, required CircleAvatar image}) {
    this.name = name;
    this.image = image;
  }

  late String name;
  late CircleAvatar image;
}
