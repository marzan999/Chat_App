import 'package:chat_app/model/user.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;

  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  static List<Message> generatedHomePageMessage() {
    return [
      Message(users[0], 'I hate programming', '10:15'),
      Message(users[1], 'Okay done', '1:10'),
      Message(users[2], 'Aj amar mon valo nei', '12:45'),
      Message(users[3], 'Pera nai, chill', '10:05'),
      Message(users[4], 'Khatam, ta ta, bye bye', '9:36'),
      Message(users[5], 'O vai, maro mujhe maro', '11:20'),
    ];
  }
}

var users = User.generatedUser();
