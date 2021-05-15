import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionInd = 0;

  void ansQue() {
    setState(() {
      if (_questionInd == 1) {
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
      'What\'s your favourite car?',
      'What\'s your favourite colour?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[_questionInd]),
              RaisedButton(child: Text('Answer 1'), onPressed: ansQue),
              RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () => print('answer 2 chosen!')),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () => print('answer 3 chosen!')),
            ],
          )),
    );
  }
}
