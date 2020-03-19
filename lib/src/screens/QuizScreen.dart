import 'package:flutter/material.dart';
import 'package:quizzier/src/models/QBrain.dart';
import 'package:quizzier/src/widgets/button_widget.dart';
import 'package:quizzier/src/widgets/question_widget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QBrain _qBrain = QBrain();

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> _scoreKeeper = [];

  void _checkAnswer(bool answer) {
    bool correctAnswer = _qBrain.getAnswer();
    setState(() {
      if (_qBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        _qBrain.reset();

        _scoreKeeper = [];
      } else {
        if (answer == correctAnswer) {
          _scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          _scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      }
      _qBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: QuestionWidget(
              title: _qBrain.getQuestion(),
            )),
        Expanded(
          child: ButtonWidget(
            title: 'True',
            color: Colors.green,
            onPress: () => _checkAnswer(true),
          ),
        ),
        Expanded(
          child: ButtonWidget(
            title: 'False',
            color: Colors.red,
            onPress: () => _checkAnswer(false),
          ),
        ),
        Row(
          children: _scoreKeeper,
        )
      ],
    );
  }
}
