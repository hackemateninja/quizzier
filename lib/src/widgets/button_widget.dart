import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  Color color;
  Function onPress;

  ButtonWidget({this.title, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: FlatButton(
        textColor: Colors.white,
        color: color,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}
