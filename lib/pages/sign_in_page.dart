// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/in.dart';
import 'package:test_app/widgets/login_tab.dart';

//int selectedIndex = 1;

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoApp();
  }
}

class DemoApp extends StatefulWidget {
  const DemoApp({
    Key? key,
  }) : super(key: key);

  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> with SingleTickerProviderStateMixin {
  late TabController controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: choices.length,
      vsync: this,
    );

    controller.animateTo(lastOpenTabIndex);

    controller.addListener(() {
      setState(() {
        _selectedIndex = controller.index;
      });
    });
  }

  @override
  void dispose() {
    lastOpenTabIndex = controller.index;
    printC('LAST OPEN TAB INDEX === ${lastOpenTabIndex}');
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    printC('SELECTED INDEX === ${_selectedIndex}');
    return Scaffold(
      appBar: AppBar(
        title: Text('${choices[controller.index].title} - tab'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          isScrollable: true,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: choices.map<Widget>((Choice choice) {
            return Tab(
              text: choice.title,
              icon: Icon(choice.icon),
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: controller,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          LoginTab(),
          Text('Sign In'),
          Text('Hello'),
          Text('Settings'),
          Text('1'),
          Text('2'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          if (_selectedIndex < choices.length - 1) {
            controller.animateTo(_selectedIndex + 1);
          } else {
            controller.animateTo(0);
            _selectedIndex = 0;
          }
        },
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice(this.title, this.icon);
}

const List<Choice> choices = <Choice>[
  Choice('Login', Icons.login),
  Choice('Sing In', Icons.plus_one),
  Choice('Hello', Icons.face),
  Choice('Settings', Icons.settings),
  Choice('other', Icons.settings),
  Choice('another', Icons.settings),
];
