// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
  // List tabName = ['Login', 'Sign In', 'Hello', 'Setitngs', '1', '2'];
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();

    controller = TabController(
      length: choices.length,
      vsync: this,
      //_selectedIndex: controller.index,
    );

    controller.addListener(() {
      setState(() {
        _selectedIndex = controller.index;
      });
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
        title: Text('${choices[controller.index].title} - tab'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          isScrollable: true,
          // ignore: prefer_const_literals_to_create_immutables

          // tabs: [
          //   Tab(
          //     text: 'Login',
          //     icon: Icon(Icons.login),
          //     // _selectedIndex = controller.index;
          //   ),
          //   Tab(
          //     text: 'Sing In',
          //     icon: Icon(Icons.plus_one),
          //   ),
          //   Tab(
          //     text: 'Hello',
          //     icon: Icon(Icons.face),
          //   ),
          //   Tab(
          //     text: 'Settings',
          //     icon: Icon(Icons.settings),
          //   ),
          // ],
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
          print(_selectedIndex);
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
