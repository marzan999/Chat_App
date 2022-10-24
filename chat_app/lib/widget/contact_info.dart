// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/model/message.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  Message message;
  ContactInfo(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${message.user.firstName}\n${message.user.lastName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                _buildButton(Icons.call),
                SizedBox(
                  width: 5,
                ),
                _buildButton(Icons.video_call),
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildButton(IconData iconData) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 144, 157, 161),
      ),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
