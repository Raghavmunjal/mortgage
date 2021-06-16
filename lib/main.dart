import 'package:flutter/material.dart';
import 'package:mortgage_calc/constants.dart';
import 'package:mortgage_calc/screens/main_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor:Color(0xFFFFFFFF),
      ),
      home: MainPage(),
    );
  }
}
