import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent(@required this.texto, @required this.icon);

  final String texto;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(height: 15.0),
        Text(
          texto,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
