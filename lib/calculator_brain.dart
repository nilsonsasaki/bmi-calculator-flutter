import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({
    @required this.height,
    @required this.weight,
    //@required this.age,
    //@required this.gender,
  });

  final int height;
  final int weight;
  //final Gender gender;
  //final int age;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, you should see a doctor';
    } else if (_bmi > 18.5) {
      return 'Congratulations, you have a normal body weight';
    } else {
      return 'You have a less than normal body weight, you should see a doctor';
    }
  }
}
