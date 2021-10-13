// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/pages/second_page.dart';
import 'package:test_app/pages/main_page.dart';
import 'package:test_app/pages/first_page.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => MainScreen(),
          '/first': (BuildContext context) => FirstScreen(),
          '/second': (BuildContext context) => SecondScreen(),
        },
      ),
    );
