// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/pages/login_page.dart';
import 'package:test_app/pages/main_page.dart';
import 'package:test_app/pages/sign_in_page.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => MainScreen(),
          '/loginScreen': (BuildContext context) => LoginScreen(),
          '/signInScreen': (BuildContext context) => SignInScreen(),
        },
      ),
    );
