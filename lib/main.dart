import 'package:bmi_calculator/screens/content_page.dart';
import 'package:bmi_calculator/screens/google_map.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0B1033),
          scaffoldBackgroundColor: Color(0xFF0B1033)),
      routes: {
        '/': (context) => InputPage(),
        '/content': (context) => ContentPage(),
        '/maps': (context) => MapSample()
      },
    );
  }
}
