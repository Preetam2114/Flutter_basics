import "package:flutter/material.dart";
import "./question.dart";
import './answer.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionInd = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionInd < 3) {
        _questionInd += 1;
      } else {
        print('you did it');
      }
    });
    print("answer chosen for question $_questionInd");
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ['Green', 'Blue', 'Red'],
      },
      {
        'questionText': 'What\'s your favourite car?',
        'answers': ['BMW', 'Mercedes', 'Audi'],
      },
      {
        'questionText': 'Who\'s your favourite animal?',
        'answers': ['Elephant', 'Lion', 'Tiger'],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: _questionInd < 3
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionInd: _questionInd,
                    questions: _questions,
                  )
                : Results()));
  }
}
