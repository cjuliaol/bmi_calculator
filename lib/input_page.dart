import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const cardColor = Color(0xFF1D1E33);
const bottonContainerHeight = 80.0;

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
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Male button tap!');
                },
                child: ReusableCard(
                  colour: cardColor,
                  cardChild: IconContent(
                    'MALE',
                    Icon(FontAwesomeIcons.mars, size: 80.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('Female button tap!');
                },
                child: ReusableCard(
                  colour: cardColor,
                  cardChild: IconContent(
                    'FEMALE',
                    Icon(FontAwesomeIcons.venus, size: 80.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: ReusableCard(colour: cardColor),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(colour: cardColor),
            ),
            Expanded(
              child: ReusableCard(colour: cardColor),
            ),
          ]),
        ),
        Container(
          color: Colors.pink,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottonContainerHeight,
          child: Center(
            child: Text(
              'CALCULATE',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('You pressed floating button');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
