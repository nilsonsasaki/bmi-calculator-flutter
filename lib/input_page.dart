import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'reusable_icon_config.dart';

const Color activeColor = Color(0xFF1D1E33);
const Color inactiveColor = Color(0xFF111328);
const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color iconTextColor = Color(0xFF8D8E98);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                      print('Male card was pressed');
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor,
                      cardChild: ReusableIconConfig(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                        iconTextColor: iconTextColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                      print('Female card was pressed');
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                      cardChild: ReusableIconConfig(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                        iconTextColor: iconTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeColor,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
