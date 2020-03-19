import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  String title;

  QuestionWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
