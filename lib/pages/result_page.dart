import 'package:bmi_calculate_assingment/components/bottom_button.dart';
import 'package:bmi_calculate_assingment/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String gender;
  final String bmi;
  final int age;
  final String resultText;
  final String bodyText;
  final int height;
  final int weight;
  const ResultPage({
    super.key,
    required this.bmi,
    required this.age,
    required this.resultText,
    required this.bodyText,
    required this.height,
    required this.weight,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: Image.asset("images/LOGO.png"),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                foregroundImage: AssetImage(
                  "images/my.png",
                ),
                radius: 30,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your BMI Score",
                style: kHeadTextStyle,
              ),
            ),
            Padding(
              child: Text(
                bmi,
                style: kBMIScoreStyle,
              ),
              padding: EdgeInsets.only(top: 10.0, bottom: 8.0),
            ),
            Text(
              resultText,
              style: kBmiTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Gender : $gender",
                    style: kreUnitTextStyle,
                  ),
                  Text(
                    "Age : $age",
                    style: kreUnitTextStyle,
                  ),
                  Text(
                    "Height : $height",
                    style: kreUnitTextStyle,
                  ),
                  Text(
                    "Weight : $weight",
                    style: kreUnitTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  bodyText,
                  style: kreUnitTextStyle,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.green),
              ),
            ),
            BottomButton(
                child: Text(
                  "Re-CALCULATE",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
