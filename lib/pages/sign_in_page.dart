// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    Key? key,
    this.number = 0,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return DemoApp();
  }
}

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  List<String> labels = ['Home', 'Message', 'Notofication', 'Settings'];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Toogle Bar'),
          centerTitle: true,
          // ignore: prefer_const_literals_to_create_immutables
          bottom: TabBar(
            tabs: [
              Tab(text: 'Login', icon: Icon(Icons.login)),
              Tab(text: 'Sing In', icon: Icon(Icons.plus_one)),
            ],
          ),
        ),
        body: TabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(child: Text('Login')),
            Center(child: Text('Sign In')),
          ],
        ),
      ),
    );
  }
}
