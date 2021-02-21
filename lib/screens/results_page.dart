import 'file:///C:/Users/cjuliaol/AndroidStudioProjects/bmi_calculator/lib/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/BottomButton.dart';

class ResultsPage extends StatelessWidget {
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
                    Text('Normal', style: kTitleTextStyle),
                    Text(
                      '18.0',
                      style: kResultTextStyle,
                    ),
                    Text('Your bmi results is blah blah blah',
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
