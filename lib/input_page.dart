import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'reusable_icon_config.dart';

const int backgroundColorHex = 0xFF1D1E33;
const double bottomContainerHeight = 80.0;
const int bottomContainerColorHex = 0xFFEB1555;
const int iconTextColor = 0xFF8D8E98;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(backgroundColorHex),
                    cardChild: ReusableIconConfig(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                      iconTextColorHex: iconTextColor,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(backgroundColorHex),
                    cardChild: ReusableIconConfig(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                      iconTextColorHex: iconTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Color(backgroundColorHex),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(backgroundColorHex),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(backgroundColorHex),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColorHex),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
