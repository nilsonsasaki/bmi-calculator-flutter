import 'package:flutter/material.dart';

class ReusableIconConfig extends StatelessWidget {
  const ReusableIconConfig({
    this.icon,
    this.text,
    this.iconTextColorHex,
  });

  final IconData icon;
  final String text;
  final int iconTextColorHex;

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
            color: Color(iconTextColorHex),
          ),
        ),
      ],
    );
  }
}
