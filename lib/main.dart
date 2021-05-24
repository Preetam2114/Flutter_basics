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
  int _totalScore = 0;
  var _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 2},
        {'text': 'Red', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourite car?',
      'answers': [
        {'text': 'BMW', 'score': 3},
        {'text': 'Mercedes', 'score': 4},
        {'text': 'Audi', 'score': 5}
      ],
    },
    {
      'questionText': 'Who\'s your favourite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 2},
        {'text': 'Tiger', 'score': 3}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionInd = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
                : Results(_totalScore, _resetQuiz)));
  }
}
