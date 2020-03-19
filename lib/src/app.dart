import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzier/src/screens/QuizScreen.dart';

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: QuizScreen(),
          ),
        ),
      ),
    );
  }
}
