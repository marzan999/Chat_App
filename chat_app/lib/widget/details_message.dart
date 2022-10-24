// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_app/model/message.dart';
import 'package:chat_app/my_color/color.dart';
import 'package:flutter/material.dart';

class DetailsMessage extends StatelessWidget {
  final myId = 0;
  final list = Message.generatedMessageFromUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 2),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(90),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: ListView.separated(
                itemBuilder: ((context, index) => list[index].user.id == myId
                    ? _buildRecevedText(list[index])
                    : _buildSenderText(list[index])),
                separatorBuilder: (_, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: list.length),
          ),
        ),
      ]),
    );
  }

  Widget _buildRecevedText(Message message) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(message.lastTime),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 192, 176),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 180),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  message.lastMessage,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSenderText(Message message) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: message.user.bgColor, shape: BoxShape.circle),
          child: Image.asset(
            message.user.iconUrl,
            width: 30,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kGreyLight,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 180),
            child: Text(
              message.lastMessage,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(message.lastTime),
        ),
      ],
    );
  }
}
