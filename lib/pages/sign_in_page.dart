// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_app/pages/login_page.dart';
import 'package:test_app/widgets/login_tab.dart';

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

class _DemoAppState extends State<DemoApp> with SingleTickerProviderStateMixin {
  late TabController controller;
  List tabName = ['Login', 'Sign In'];

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${tabName[controller.index]} - tab'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Tab(text: 'Login', icon: Icon(Icons.login)),
            Tab(text: 'Sing In', icon: Icon(Icons.plus_one)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          LoginTab(),
          //Center(child: Text('Sign In')),
          LoginScreen(), // must be deleted
        ],
      ),
    );
  }
}
