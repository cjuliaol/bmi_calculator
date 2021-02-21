import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.grey[800],
          scaffoldBackgroundColor: Colors.black,
          accentColor: Colors.purple),
      home: InputPage(),
      routes: {
        '/results': (context) => ResultsPage(),
      } ,
    ),
  );
}


