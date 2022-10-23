// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'package:chat_app/model/message.dart';
//import 'package:chat_app/model/message.dart';
import 'package:chat_app/my_color/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessaheWidget extends StatelessWidget {
  //final messageList = Message.generatedHomePageMessage();
  //final messageList = Message.generatedHomePageMessage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), topRight: Radius.circular(95)),
            color: Color.fromARGB(255, 162, 177, 180)),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Marzan Islam',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('I hate programming'),
              trailing: Text('10:15'),
              leading: CircleAvatar(
                backgroundColor: kPrimaryLightt,
                backgroundImage: AssetImage('images/11.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Alexa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Okay done'),
              trailing: Text('1:10'),
              leading: CircleAvatar(
                backgroundColor: kPrimaryDark,
                backgroundImage: AssetImage('images/22.png'),
              ),
            ),
            ListTile(
              title: Text(
                'John Dev',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Aj amar mon valo nei'),
              trailing: Text('12:45'),
              leading: CircleAvatar(
                backgroundColor: kGreyLightt,
                backgroundImage: AssetImage('images/33.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Lira',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Khatam, ta ta, bye bye'),
              trailing: Text('10:15'),
              leading: CircleAvatar(
                backgroundColor: kPrimaryLightt,
                backgroundImage: AssetImage('images/44.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Faiza',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Pera nai, chill'),
              trailing: Text('10:05'),
              leading: CircleAvatar(
                backgroundColor: kPrimary,
                backgroundImage: AssetImage('images/55.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Abraham Linkon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('O vai, maro mujhe maro'),
              trailing: Text('11:20'),
              leading: CircleAvatar(
                backgroundColor: kPrimaryLightt,
                backgroundImage: AssetImage('images/66.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
