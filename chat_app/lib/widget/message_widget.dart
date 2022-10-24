// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/model/message.dart';

import 'package:chat_app/my_color/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessaheWidget extends StatelessWidget {
  final messageList = Message.generatedHomePageMessage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), topRight: Radius.circular(95)),
            color: Color.fromARGB(255, 162, 177, 180)),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(
              height: 25,
            ),
        itemCount: messageList.length);
  }

  Widget _buildMessage(BuildContext, int index) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: messageList[index].user.bgColor,
          ),
          child: Image.asset(
            messageList[index].user.iconUrl,
            width: 60,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${messageList[index].user.firstName} ${messageList[index].user.lastName}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(messageList[index].lastMessage)
            ],
          ),
        ),
        Text(messageList[index].lastTime)
      ],
    );
  }
}
