import 'package:chat_app/model/user.dart';
import 'package:flutter/animation.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;

  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  static List<Message> generatedHomePageMessage() {
    return [
      Message(users[0], 'I hate programming', '10:15 a.m.'),
      Message(users[1], 'Okay done', '1:10 p.m.'),
      Message(users[2], 'Aj amar mon valo nei', '12:45 a.m.'),
      Message(users[3], 'Pera nai, chill', '10:05 a.m.'),
      Message(users[4], 'Khatam, ta ta, bye bye', '9:36 p.m.'),
      Message(users[5], 'O vai, maro mujhe maro', '11:20 p.m.'),
    ];
  }

  static List<Message> generatedMessageFromUser() {
    return [
      Message(users[2], 'I hate programming๐๐', '10:15 a.m.'),
      Message(me, 'Okay, no problem, chill ๐', '1:10 p.m.'),
      Message(users[2], 'Aj amar mon valo nei ๐', '12:45 a.m.'),
      Message(me, 'You need break', '10:05 a.m.'),
      Message(users[2], 'Khatam, ta ta, bye bye ๐ฎโ๐จ๐ช', '9:36 p.m.'),
      Message(me, 'O vai, maro mujhe maro ๐คฃ๐๐คฃ', '11:20 p.m.'),
    ];
  }
}

var users = User.generatedUser();
var me = User(0, 'John', 'Dev', 'images/33.png', Color(0xFFFDEBC8));
