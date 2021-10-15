// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/pages/login_page.dart';
import 'package:test_app/pages/sign_in_page.dart';
import 'package:test_app/widgets/start_page_text_field.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/books.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [
                Color.fromRGBO(0, 170, 229, 0.6),
                Color.fromRGBO(0, 48, 164, 1),
                Color.fromRGBO(20, 20, 139, 1),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Image.asset(
                    'assets/img/logo1.png',
                    width: 150,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'E-learn ',
                        style: TextStyle(
                          color: Colors.teal[100],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(text: 'choto '),
                      TextSpan(text: 'tam'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    'Login your account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                StartPageTextField(Icons.account_box, 'Username'),
                StartPageTextField(Icons.lock, 'Password'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 13),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        )
                        // primary: Colors.deepOrange,
                        ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )),
                    child: const Text('Login'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don`t have account',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(width: 10), //delete
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.lightBlue[200],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
