import 'package:flutter/material.dart';
import 'Inputpage.dart';
import 'Constants.dart';


enum Gender{
  male,
  female
}

class CardColor {
  Color male=kinactiveColor;
  Color female=kinactiveColor;

  void changeColor(Gender gender) {
    if (gender == Gender.male) {
      if (male == kinactiveColor) {
        male = kactiveColor;
        female = kinactiveColor;
      } else {
        male = kinactiveColor;
      }
    }
    if (gender == Gender.female) {
      if (female == kinactiveColor) {
        female = kactiveColor;
        male = kinactiveColor;
      } else {
        female = kinactiveColor;
      }
    }
  }
}