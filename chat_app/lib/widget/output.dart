// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  const OutputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 107, 148, 144),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Text(
          'Thanks for conversing with me :)',
          style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
