import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void ansQue() {
    print("answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What your favourite car?',
      'What is yout favourite colour?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text('This is the question'),
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
