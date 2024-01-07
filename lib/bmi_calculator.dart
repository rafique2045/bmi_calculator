import 'dart:math';

class BmiCalculator {
  final height;
  final weight;
  BmiCalculator({required this.height, required this.weight});
  late double _bmi;
  // calculate BMI
  String bmiCalculate() {
    _bmi = weight * pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  // return body text
  String bodyText() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  // Get Result Text

  String getResultText() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }
}
