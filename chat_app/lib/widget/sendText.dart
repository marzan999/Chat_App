// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/widget/output.dart';
import 'package:flutter/material.dart';

class SendText extends StatelessWidget {
  const SendText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 5),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 161, 152, 151),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Type your message...',
                style: TextStyle(fontSize: 20),
              ),
              // Icon(Icons.send)
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OutputPage()));
                  },
                  icon: Icon(Icons.send))
            ],
          ),
        ),
      ),
    );
  }
}
