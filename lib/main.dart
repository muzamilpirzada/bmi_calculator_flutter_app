import 'package:bmi_calculator/Input_page.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0F1331),

          scaffoldBackgroundColor: Color(0xff0C1234),
          // textTheme: TextTheme(
          //     bodyText1: TextStyle(color: Colors.white)
          // ),
      ),
      home: InputPage(),//
    );
  }
}

