import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  final String title;
  final Function onTap;

  const BottomButton({ @required this.title, @required this.onTap });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            title,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}