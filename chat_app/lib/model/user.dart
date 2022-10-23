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
      User(0, 'Marzan', 'Islam', 'images/11.png',
          Color.fromARGB(255, 188, 191, 214)),
      User(
          2, 'Alexa', '.', 'images/22.png', Color.fromARGB(255, 175, 160, 197)),
      User(3, 'John', 'Dev', 'images/33.png',
          Color.fromARGB(255, 198, 202, 155)),
      User(4, 'Lira', '.', 'images/44.png', Color.fromARGB(255, 131, 131, 161)),
      User(5, 'Faiza', 'Foxx', 'images/55.png',
          Color.fromARGB(255, 199, 177, 129)),
      User(6, 'Abraham', 'Linkon', 'images/66.png',
          Color.fromARGB(255, 111, 111, 117)),
    ];
  }
}
