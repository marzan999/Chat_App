// ignore_for_file: prefer_const_constructors

import 'package:chat_app/my_color/color.dart';
import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 144, 157, 161),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Back',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
