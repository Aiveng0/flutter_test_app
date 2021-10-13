// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/widgets/start_page_text_field.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
            colors: [
              Color.fromRGBO(0, 170, 229, 1),
              Color.fromRGBO(20, 20, 139, 1),
            ],
          ),
        ),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                'Login Screen',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              alignment: Alignment.center,
              child: Icon(
                Icons.sailing,
                size: 120,
                color: Colors.white,
              ),
            ),
            StartPageTextField(Icons.ac_unit, 'Lorem'),
          ],
        ),
      ),
    );
  }
}
