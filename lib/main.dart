import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionInd = 0;

  void ansQue() {
    setState(() {
      questionInd += 1;
    });
    print("answer chosen for question $questionInd");
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
              Text(questions[questionInd]),
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
