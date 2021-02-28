import 'file:///C:/Users/cjuliaol/AndroidStudioProjects/bmi_calculator/lib/components/reusable_card.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  final String bmiNumber;
  final String result;
  final String interpretation;

  ResultsPage({this.bmiNumber, this.result, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                child: Text('YOUR RESULTS', style: kLargeTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(result, style: kTitleTextStyle),
                    Text(
                      bmiNumber,
                      style: kResultTextStyle,
                    ),
                    Text(interpretation,
                        style: kMessageTextStyle),
                  ],
                ),
              ),
            ),
            BottomButton(
                title: 'RE-CALCULATE YOUR BMI',
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ));
  }
}
