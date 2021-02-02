import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.grey[800],
          scaffoldBackgroundColor: Colors.grey,
          accentColor: Colors.purple),
      home: InputPage(),
    ),
  );
}


