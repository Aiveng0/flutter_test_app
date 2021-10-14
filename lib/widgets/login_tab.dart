// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/widgets/start_page_text_field.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                'Логі́н — у комп\'ютерній безпеці — алфавітно-цифровий набір символів, що ідентифікує користувача комп\'ютера або комп\'ютерної мережі.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
                color: Colors.blue[900],
              ),
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    StartPageTextField(
                      Icons.phone,
                      'Phone number',
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    StartPageTextField(
                      Icons.email,
                      'Email Addrress',
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    StartPageTextField(
                      Icons.facebook,
                      'Continue with Facebook',
                      borderColor: Colors.blueAccent,
                      backgroundColor: Colors.blueAccent,
                    ),
                    StartPageTextField(
                      Icons.g_mobiledata,
                      'Continue with Google',
                      borderColor: Colors.red,
                      backgroundColor: Colors.red,
                    ),
                    StartPageTextField(
                      Icons.drive_folder_upload,
                      'Continue with GitHub',
                      borderColor: Colors.purple.shade700,
                      backgroundColor: Colors.purple.shade700,
                    ),
                    StartPageTextField(
                      Icons.local_drink,
                      'Continue with LinkedIn',
                      borderColor: Colors.black,
                      backgroundColor: Colors.black,
                    ),
                    StartPageTextField(
                      Icons.elderly,
                      'Continue with AnotherHub',
                      textColor: Colors.orange,
                      borderColor: Colors.orange,
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
