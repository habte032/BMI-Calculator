import 'dart:math';

class CalculateBMI {
  final int height;
  final int weight;
  late double bmi;

  CalculateBMI({required this.height, required this.weight});

  String calculateBmi() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (bmi >= 30) {
      return 'Obesity';
    } else if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getrange() {
    if (bmi >= 30) {
      return 'Over 30';
    } else if (bmi >= 25) {
      return '25-29.9';
    } else if (bmi >= 18.5) {
      return '18.5-24.9';
    } else {
      return 'Under 18.5';
    }
  }

  String getmessage() {
    if (bmi >= 25) {
      return "Your weight is higher than normal. You need exercise and a balanced diet.";
    } else if (bmi >= 18.5) {
      return "Congratulations! You have a healthy body weight. Keep up the good work!";
    } else {
      return "Your weight is lower than normal. You need to get proper nutrition";
    }
  }
}
