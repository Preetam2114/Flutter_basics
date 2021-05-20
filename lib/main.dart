import "package:flutter/material.dart";
import "./question.dart";
import './answer.dart';

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
      if (_questionInd == 2) {
        _questionInd = 0;
      } else {
        _questionInd += 1;
      }
    });
    print("answer chosen for question $_questionInd");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
          body: Column(
            children: [
              Question(questions[_questionInd]['questionText']),
              ...(questions[_questionInd]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
