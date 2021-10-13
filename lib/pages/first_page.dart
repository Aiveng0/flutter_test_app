// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key? key,
    this.number = 0,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        'Create account',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
