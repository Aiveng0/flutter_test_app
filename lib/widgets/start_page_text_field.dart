// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StartPageTextField extends StatelessWidget {
  const StartPageTextField(
    this.icon,
    this.text, {
    Key? key,
    this.textColor = Colors.white,
    this.boxContentColor = Colors.white,
    this.boxContentBGColor = Colors.transparent,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color textColor;
  final Color boxContentColor;
  final Color boxContentBGColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: boxContentColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
        color: boxContentBGColor,
      ),
      padding: const EdgeInsets.all(13),
      margin: const EdgeInsets.only(bottom: 13),
      child: Row(
        children: [
          Icon(
            icon,
            color: textColor,
            size: 20,
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
