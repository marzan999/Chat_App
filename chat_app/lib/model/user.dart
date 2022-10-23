import 'package:flutter/animation.dart';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;

  User(this.id, this.firstName, this.lastName, this.iconUrl, this.bgColor);

  static List<User> generatedUser() {
    return [
      User(0, 'Marzan', 'Islam', 'images/11.png', Color(0xFFEDEEF7)),
      User(2, 'Marzan', 'Islam', 'images/22.png', Color(0xFF000036)),
      User(3, 'Marzan', 'Islam', 'images/33.png', Color(0xFFB4B7BF)),
      User(4, 'Marzan', 'Islam', 'images/44.png', Color(0xFF000036)),
      User(5, 'Marzan', 'Islam', 'images/55.png', Color(0xFFB4B7BF)),
      User(6, 'Marzan', 'Islam', 'images/66.png', Color(0xFF000036)),
    ];
  }
}
