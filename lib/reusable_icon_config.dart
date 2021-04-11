import 'package:flutter/material.dart';

class ReusableIconConfig extends StatelessWidget {
  const ReusableIconConfig({
    this.icon,
    this.text,
    this.iconTextColor,
  });

  final IconData icon;
  final String text;
  final Color iconTextColor;

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
            color: iconTextColor,
          ),
        ),
      ],
    );
  }
}
