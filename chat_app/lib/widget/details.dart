// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/model/message.dart';
import 'package:chat_app/my_color/color.dart';
import 'package:chat_app/widget/contact_info.dart';
import 'package:chat_app/widget/details_appbar.dart';
import 'package:chat_app/widget/details_message.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Message message;
  DetailsPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: [
          DetailsAppBar(),
          ContactInfo(message),
          Expanded(child: DetailsMessage())
        ],
      ),
    );
  }
}
