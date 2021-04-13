import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableIconConfig extends StatelessWidget {
  ReusableIconConfig({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: kLabelTextStyle.color,
          ),
        ),
      ],
    );
  }
}
